module.exports = {
  //pre, post and basic testing
  shardChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 80,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      'useAutomationExtension': false,
      args: ['no-sandbox', 'headless', 'disable-gpu', 'disable-dev-shm-usage', 'window-size=1920x1080'],
      w3c: false
    }
  },
  //local
  chrome: {
    'browserName': 'chrome',
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      'useAutomationExtension': false,
      args: ['no-sandbox', 'headless', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false,
    },
  },
  //moblie local
  mobileChrome: {
    'browserName': 'chrome',
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      'useAutomationExtension': false,
      args: ['headless','no-sandbox','--disable-gpu', 'disable-dev-shm-usage','--window-size=414x736'],
      w3c: false,
    },
  },
  //special case
  headShardChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 45,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      'useAutomationExtension': false,
      args: ['no-sandbox', 'disable-gpu', 'disable-dev-shm-usage', 'window-size=1920x1080'],
      w3c: false
    }
  },
  headChrome: {
    'browserName': 'chrome',
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      'useAutomationExtension': false,
      args: ['no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false,
    },
  },
  //one
  testChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 12,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      args: ['no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false
    }
  },
  //mes
  mesChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 20,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      args: ['no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false
    }
  },
  //develop/beta test
  developChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 30,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      args: ['no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false
    }
  },
  //small test
  smallChrome: {
    'browserName': 'chrome',
    shardTestFiles: true,
    maxInstances: 4,
    unexpectedAlertBehaviour: 'accept',
    'goog:chromeOptions': {
      args: ['no-sandbox', '--disable-gpu', 'disable-dev-shm-usage', '--window-size=1920x1080'],
      w3c: false
    }
  },
}