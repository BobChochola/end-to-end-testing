let App = require('../../../app.js')
let Testrail = require('../../models/Testrail.js')

let app = new App()
let testrail = new Testrail()
app.prepare()

testrail.getAllCase(process.env.TEST_FILE)
testrail.updateCase()
testrail.addCase()
