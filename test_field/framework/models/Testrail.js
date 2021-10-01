const glob = require('glob')
const Gherkin = require('gherkin')
const fs = require('fs')
const path = require("path");
const Testrail = require('testrail-api');
const App = require('../../app.js')
const sleep = require('sleep')

class Testraill{
  constructor() {
    const app = new App()
    app.prepare()

    this.project = 1
    this.suite = 47
    this.parser = new Gherkin.Parser()
    this.testrail = new Testrail(app.config.testrail)

  }

  async getSections(project, suite) {
    const sections = await this.testrail.getSections(project, {'suite_id':suite})
    return sections.body
  }

  async getCases(project, suite) {

    const cases = await this.testrail.getCases(project, {'suite_id':suite})
    return cases.body
  }

  async getAllCase(fileName = '*') {
    try{
      const sections = await this.getSections(this.project, this.suite)
      const cases = await this.getCases(this.project, this.suite)
      let tmpFile = await glob.sync(`./features/component/**/${fileName}.feature`)
      for (const [key, value] of Object.entries(tmpFile)) {
        const tmpFileName = path.basename(value,'.feature')
        const component = await path.dirname(value).split(path.sep).pop()
        const tmpScenario = await this.parser.parse(fs.readFileSync(value).toString())
        let custom_preconds = []
        let custom_steps = []
        let title
        let id
        let tags = []
        if (tmpScenario.feature){
          title = tmpScenario.feature.name
          tags = await tmpScenario.feature.tags.map((tag) => { return tag.name })
          let steps = await tmpScenario.feature.children.map(async(obj) => {
            if(obj.type == 'Background') { custom_preconds.push(obj.steps.map(tmpObj => `${tmpObj.text}\n`)) }
            if(obj.type == 'Scenario') { custom_steps.push(obj.steps.map(tmpObj => `${tmpObj.text}\n`)) }
          })
        }
        let context = {
          id: id,
          title: title,
          component: component,
          background: custom_preconds.toString(),
          steps: custom_steps.toString(),
          tags: tags.toString(),
        }
        if(title!= undefined && custom_steps.length){ await fs.writeFileSync(`${tmpFileName}.feature.tmp`, JSON.stringify(context), 'utf8')}
        const remoteCases = await cases.filter(async(tmpCase)=>{
          if (tmpCase.custom_filename == path.basename(value) && title!= undefined && custom_steps.length){
            if(tmpCase.custom_steps !== custom_steps.toString() || tmpCase.title !== title.toString()){
              context.id = tmpCase.id
              return await fs.writeFileSync(`${tmpFileName}.feature.tmp`, JSON.stringify(context), 'utf8')
            }else{
              return await fs.unlinkSync(`${tmpFileName}.feature.tmp`)
            }
          }
        })
      }
    }catch(e){
      console.log(e)
    }
  }

  async updateCase() {
    const files = await fs.readdirSync('.').filter((file) => {
      const regex = new RegExp(`.feature.tmp`)
      return file.match(regex)
    })
    await files.forEach(async(fileName)=>{
      try{
        const testrailFileName = fileName.replace('.tmp', '')
        const file = await fs.readFile(fileName, 'utf8', async (err, data) => {
          let context = await JSON.parse(data)
          if(context.id!=undefined){
            sleep.sleep(1)
            const testCase = await this.testrail.updateCase(context.id, {'title':context.title, 'custom_filename':testrailFileName, 'custom_preconds':context.background, 'custom_steps':context.steps})
            console.log(`${testrailFileName} updated`)
          }else{
            return console.log(`${testrailFileName} is new case`)
          }
        })
      }catch(e){
        console.log(e)
      }
    })
  }

  async addCase() {
    const sections = await this.getSections(this.project, this.suite)
    const files = await fs.readdirSync('.').filter((file) => {
      const regex = new RegExp(`.feature.tmp`)
      return file.match(regex)
    })
    await files.forEach(async(fileName)=>{
      try{
        const testrailFileName = fileName.replace('.tmp', '')
        const file = await fs.readFile(fileName, 'utf8', async (err, data) => {
          const context = await JSON.parse(data)
          const sectionId = await sections.filter((section) => {
            if(section.name == context.component){ return section.name }
          })
          if(sectionId[0] && context.id == undefined){
            sleep.sleep(1)
            const testCase = await this.testrail.addCase(sectionId[0].id, {'title':context.title, 'custom_filename':testrailFileName, 'custom_preconds':context.background, 'custom_steps':context.steps})
            console.log(`${testrailFileName} added`)
            return await fs.unlinkSync(fileName)
          }else{
            console.log(`${testrailFileName} nothing to add`)
            return await fs.unlinkSync(fileName)
          }
        })
      }catch(e){
        console.log(e)
      }
    })
  }

}
module.exports = Testraill
