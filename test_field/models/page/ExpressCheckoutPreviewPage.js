let Page = require('../../framework/models/Page.js')

class ExpressCheckoutPreviewPage extends Page {

  get elements() {
    return {
      'id': this.by.css('#preview-store-iframe-container'),
      'shop': this.by.css('iframe#theme-editor-iframe'),
      'product title': this.by.css('.product-title'),
      'message button': this.by.css('div[ng-show="true"]'),
      'product list': this.by.css('span[class="product-price"]'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/express_checkout_pages/new?locale=en`
  }
}

module.exports = ExpressCheckoutPreviewPage