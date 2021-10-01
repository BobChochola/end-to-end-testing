let Page = require('../../framework/models/Page.js')

class MarketingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="MerchantsMarketingController"]'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/marketing?locale=en`
  
  }

}

module.exports = MarketingPage
