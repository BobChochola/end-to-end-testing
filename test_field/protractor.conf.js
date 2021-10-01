let App = require('./app.js')

let app = new App()

app.prepare()
app.createDirectory()

module.exports.config = app.config.protractor
