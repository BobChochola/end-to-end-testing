let Page = require('../../framework/models/Page.js')

class ShopUserCreditLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.user_credits'),
      'tab': this.by.css('.Tab-label'),
      'row of credit list': this.by.css('.credit-history tbody tr'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/user_credits?locale=en`
  }
}

module.exports = ShopUserCreditLayoutVTwoPage