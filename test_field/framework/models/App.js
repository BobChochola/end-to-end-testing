const fs = require('fs');
const View = require('./View.js')
const Page = require('./Page.js')
const ResourceManager = require('./ResourceManager.js')
const path = require('path')
const Reporter = require('./Reporter.js')
const deepExtend = require('deep-extend')

class App {
  constructor() {
    this.configPath = path.resolve(process.cwd(), './config')
    this.pagePath = path.resolve(process.cwd(), './models/page')
    this.transformerPath = path.resolve(process.cwd(), './models/transformer')
    this.pages = {}

    this.context = global
    this.context.app = this
  }

  generateReport() {
    this.reporter.generate()
  }

  createDirectory() {
    this.reporter.createDirectory()
  }

  loadConfig() {
    require('dotenv').config()

    const configFile = this.importDir(this.configPath);

    let envConfig = {};
    if (process.env.NODE_ENV) {
      try {
        envConfig = require(path.resolve(process.cwd(), `./config/env/${process.env.NODE_ENV}.js`));
      }catch(e) { }
    }

    this.config = deepExtend({}, configFile, envConfig);
  }

  loadPage() {
    this.context.View = View
    this.context.Page = Page
    this.context.ResourceManager = ResourceManager
  }

  getPageClass(page) {
    const existingPage = app.pages[page]

    if (existingPage) return existingPage

    const newPage = require(`${this.pagePath}/${page}.js`)

    app.pages[page] = newPage

    return app.pages[page]
  }

  prepare() {
    this.loadConfig()
    this.loadPage()
  }

  // helper
  importDir(dirname, options={}) {
    let result = {}

    try { result = require('require-all')({ ...options, dirname }) }
    catch(e) {console.log(e)}

    return result
  }

  get reporter() {
    if (!this.reporterInstance) {
      this.reporterInstance = new Reporter(this.config.reporter)
    }

    return this.reporterInstance
  }

}

module.exports = App
