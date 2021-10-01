let Page = require('../../framework/models/Page.js')

class ShopNotFoundPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.engtext'),
    }
  }

  get samples() {
    return {}
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/404`
  }

  get isAngular() { return false }

}

module.exports = ShopNotFoundPage
