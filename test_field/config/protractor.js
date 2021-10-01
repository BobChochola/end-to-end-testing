const {
  TEST_SERVER_HOST,
  TEST_SERVER_PORT,
  TEST_TAG,
  TEST_CAPABILITIES,
  TEST_COMPONENT
} = process.env

const capabilities = require('./capabilities.js')[TEST_CAPABILITIES]
const tags = TEST_TAG || ''
const { reportFile } = require('./app.js')

module.exports = {
  capabilities,
  seleniumAddress: `http://${TEST_SERVER_HOST}:${TEST_SERVER_PORT}/wd/hub`,
  getPageTimeout: 60000,
  allScriptsTimeout: 500000,
  framework: 'custom',
  // path relative to the current config file
  frameworkPath: require.resolve('protractor-cucumber-framework'),

  // Spec patterns are relative to this directory.
  specs: [
    `features/${TEST_COMPONENT? TEST_COMPONENT:'**'}/*.feature`,
  ],

  restartBrowserBetweenTests: true,

  cucumberOpts: {
    tags,
    require: 'features/step_definitions/browser_steps.js features/support/*',
    format: `json:./reports/tmp-${reportFile}/${reportFile}.json`,
    profile: false,
    'no-source': true,
  },
}
