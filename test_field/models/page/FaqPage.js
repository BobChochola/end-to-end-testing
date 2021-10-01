let Page = require('../../framework/models/Page.js')

class FaqPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[role="search"]'),

    }
  }
  get isAngular() { return false }

  get url() {
  
    return `https://support.shoplineapp.com/`
  
  }
}

module.exports = FaqPage
