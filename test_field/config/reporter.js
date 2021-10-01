const { reportFile } = require('./app.js')

module.exports = {
  reportFile,
  opts: {
    theme: 'bootstrap',
    jsonDir: `./reports/tmp-${reportFile}`,
    output: `./reports/${reportFile}.html`,
    reportSuiteAsScenarios: true,
    launchReport: true,
    ignoreBadJsonFile: true,
  }
}
