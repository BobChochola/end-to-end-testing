let Page = require('../../framework/models/Page.js')

class OceanPaymentPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div.step__sections'),
      'card number field': this.by.css('input#card_number_temp'),
      'expiration date field': this.by.css('input#checkout_expiration_date'),
      'secure code field': this.by.css('input#cvv2'),
      'pay now button': this.by.css('button[type="submit"]'),
    }

  }

  get isAngular() { return false }

  get samples() {

    return {
      'card number': '5422882800700007',
      'expiry date': '07/20',
      'cvc': '123',
    }

  }

  get url() {

    return `https://secure.oceanpayment.com/paymentpages/web/pay.html`

  }



}

module.exports = OceanPaymentPage
