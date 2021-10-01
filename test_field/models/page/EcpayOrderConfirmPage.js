let Page = require('../../framework/models/Page.js')

class EcpayOrderConfirmPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[class="pay_content payment_content"] div[class="order"]'),
      'back to shop button': this.by.css('div[class="sumbit print"] a'),
    }
  }

  get isAngular() { return false }

  get samples() {
    return {}
  }
}

module.exports = EcpayOrderConfirmPage
