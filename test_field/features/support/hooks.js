var {defineSupportCode } = require('cucumber');

defineSupportCode(function({Before, After, setWorldConstructor, setDefaultTimeout}) {

  setDefaultTimeout(300 *1000)

  Before(function() {

    this.driver = browser.driver
    // this.driver.manage().deleteAllCookies()

    /* do a random start time. try not to requesting the target at the same time that may overload something. (maybe seleniumhub ? server?). not sure at this moment */
    let maximum = 10
    let minimum = 0
    let interval = 500
    let delay = Math.floor(Math.random() * (maximum - minimum + 1)) + minimum;

    browser.driver.sleep(delay * interval);

    const accountManager = new ResourceManager(app.config.resource.account)

    this.pageProps = {}

    this.pageProps.baseURL = app.config.app.baseURL
    this.pageProps.shopURL = app.config.app.shopURL
    this.pageProps.apiURL = app.config.app.apiURL
    this.pageProps.oneURL = app.config.app.oneURL
    this.pageProps.shoplyticsURL = app.config.app.shoplyticsURL
    this.pageProps.sample = app.config.sample
    this.pageProps.adminAccount = accountManager.getResource(['admin'], false)

    //default not taking admin account
    this.accountTags = ['non-admin']

  })

  //handle fixtures, baseLocation
  Before(function(scenario) {

    let tagsExtractor = function(scenario, tagCategory, defaultTag) {

      let tags = scenario.pickle.tags.map((tag) => tag.name)

      let regex = new RegExp(`^@${tagCategory}`, "i")

      let matches = tags.filter((tag) => tag.match(regex))

      let matched = matches.length > 0

      if (!matched && !defaultTag) { return [] }
      if (!matched) { return [ defaultTag ] }

      return matches.map( (match) => match.substr(1) )

    }

    this.accountTags = this.accountTags.concat(tagsExtractor(scenario, 'fixture', 'newAccount'))
    this.accountTags = this.accountTags.concat(tagsExtractor(scenario, 'baseLocation', 'baseLocation-TW'))
    this.accountTags = this.accountTags.concat(tagsExtractor(scenario, 'theme', 'theme-basic'))

  })

  Before(function() {

    let accountManager = new ResourceManager(app.config.resource.account)

    let account = accountManager.getResource(this.accountTags)

    this.account = account

    this.pageProps.account = account

    this.pageProps.loginAccount = account

  })

  Before("@superAdmin or @premiumFeature", function() {

    this.pageProps.loginAccount = this.pageProps.adminAccount

  })

  Before(function() {

    let view = new View(this)

    return view.log({ account: this.account })

  })

  After(function(scenario) {

    let view = new View(this)

    let accountUnmark = app.config.app.accountUnmarkStatus

    // show on jenkins panel
    console.log({ account: this.account.handle, time: date = new Date() })

    if (scenario.result.status != 'failed' && accountUnmark != 'false') {

      let accountManager = new ResourceManager(app.config.resource.account)
      accountManager.unmarkInUse(this.account)

      return view.logCurrentURL()

    } else if(scenario.result.status == 'failed'){
  
      view.logErrorConsole()
      return view.snapShot()
        .then( () => view.logCurrentURL())
    }

  });

});

