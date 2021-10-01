let Page = require('../../framework/models/Page.js')

class PaypalConfirmPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[class*="paypal"]'),
    }
  }
}

module.exports = PaypalConfirmPage
