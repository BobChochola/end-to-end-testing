let Page = require('../../framework/models/Page.js')

class OpayCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('#SendToECPay'),
      'checkout button': this.by.css('#SendToECPay'),
    }
  }

  get isAngular() { return false }

  get url() { return }
}

module.exports = OpayCheckoutPage