let Page = require('../../framework/models/Page.js')

class EcpayCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('a[href*="ecpay.com.tw"]'),
      'get cvs button': this.by.css('#CVSPaySubmit'),
      'back to shop button': this.by.css('.btn[href*="shopline"]'),
      'cvs pay content': this.by.css('.o-info-2 .order-table'),
    }
  }

  get isAngular() { return false }

  get samples() {
    return {}
  }
}

module.exports = EcpayCheckoutPage
