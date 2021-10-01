let fs = require('fs')
let _ = require('underscore')

class NewAccountExtractor {

  constructor(filePath, exportPath) {
 
    this.filePath = filePath
    this.exportPath = exportPath 
    this.json = null
    this.users = []
    this.indexTemp = './framework/templates/setupData.tmpl'

  }

  readJSONFile() {

    this.json = JSON.parse(fs.readFileSync(this.filePath, 'utf8'))

    return this
  
  }

  writeJSONFile() {

    let str = JSON.stringify(this.users)
    str = str.substring(1, str.length-1)

    fs.writeFileSync(
      this.exportPath,
      _.template(fs.readFileSync(this.indexTemp, 'utf-8'))({
        users: str 
      })
    );      

//    fs.writeFile(this.exportPath, JSON.stringify(this.users), 'utf8', function() {});  

    return this

  }

  parse() {

    if (!this.json) return

    let users = []

    this.json.forEach( (scenario) => {

      let user = {}
      let isFail = false

      scenario.elements[0].steps.forEach( (step, idx) => {

        if (step.result.status != "passed") { isFail = true }
        
        if (isFail) return
       
        if (step.name == 'I fill new account email to email field') {

          user.email = JSON.parse(step.embeddings[1].data).value
          user.id = user.email.match(/^testuser\+(.*)@shoplineapp\.com/)[1] 
        
        }
     
        if (step.name == 'I fill new account password to password field') {

          user.password = JSON.parse(step.embeddings[1].data).value
        
        }

        if (step.keyword == 'After') {
        
          user.handle = step.embeddings[0].data.match(/^https\:\/\/admin\.shoplineapp\.com\/admin\/(.*)\/$/)[1]

        }

      })
   
      if (!isFail) {

        let userBasic = {
          notificationEmail: "shoplineqa@gmail.com",
          tags: ['non-admin', 'baseLocation-TW', 'newAccount']
        }

        users.push(Object.assign({}, user, userBasic))

      }

    })

    this.users = users

    return this

  }

  run() {
   
    this.readJSONFile().parse().writeJSONFile()
  
  }

}


module.exports = NewAccountExtractor
