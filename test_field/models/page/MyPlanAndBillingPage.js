let Page = require('../../framework/models/Page.js')

class MyPlanAndBillingPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[page="MSAdmin"]'),
      'plan frame': this.by.css('#msiframe'),
      'subscription information': this.by.css('#root > div > div:nth-child(4) > div > div > div:nth-child(2)'),
      'current plan status': this.by.css('#root > div > div:nth-child(4) > div > div > div:nth-child(1) > div > div > span > div'),
      'purchase plan button': this.by.css('#root > div > div:nth-child(4) > div > div > div:nth-child(1) > div > div > div > button:nth-child(1)'),
      'change period button': this.by.css('#root > div > div:nth-child(4) > div > div > div:nth-child(1) > div > div > div > button:nth-child(2)'),
      'billing information': this.by.css('#root > div > div:nth-child(7)'),
      'subscription tab': this.by.css('#root > div > div:nth-child(4) > div > div > div > div > div'),
      'renew subscription button': this.by.css('#root > div > div:nth-child(4) > div > div > div > div > div > div:nth-child(1) > div:nth-child(2) > div > button'),
      'cancel button': this.by.xpath('//*[@id="root"]/div[2]/div[3]/div[2]/div[3]/div/span/button'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/plans/current?locale=en`
  }
}

module.exports = MyPlanAndBillingPage 
