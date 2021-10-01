let Page = require('../../framework/models/Page.js')

class PlanRequestHKPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[href*="https://upgrade.shopline.hk/plans"]'),
      'request panel': this.by.css('#element-178'),
    }

  }

  get isAngular() { return false }

  get url() {
  
    return `https://upgrade.shopline.hk/plans`
  
  }
}

module.exports = PlanRequestHKPage
