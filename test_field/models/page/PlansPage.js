let Page = require('../../framework/models/Page.js')

class PlansPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-app="admin_app"]'),
      'plan frame': this.by.css('#msiframe'),
      'plan reminder': this.by.css('#root > div > div:nth-child(4)'),
      'plan list': this.by.css('#root > div > div:nth-last-of-type(3)'),
      'purchase checkbox': this.by.css('#root > div > div > div > div > div > div > div > span > button'),
      'popover': this.by.css('#root > div > div > div > div > div > div > div:nth-child(2)'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/plans?locale=en`
  }
}

module.exports = PlansPage
