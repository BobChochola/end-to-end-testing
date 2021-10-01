let Page = require('../../framework/models/Page.js')

class ShopPaypalConfirmPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div#paypal-checkout-button'),
      'paypal checkout': this.by.css('iframe.zoid-component-frame'),
      'paypal checkout btn': this.by.css('div[data-button]'),
    }
  }
}

module.exports = ShopPaypalConfirmPage
