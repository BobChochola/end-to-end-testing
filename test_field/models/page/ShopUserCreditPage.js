let Page = require('../../framework/models/Page.js')

class ShopUserCreditPage extends Page {

  get elements() {
    return {
      'id': this.by.css('#store-credits .credit-summary'),
      'member center tab': this.by.css('.nav-tabs a'),
      'row of credit list': this.by.css('.credit-history tbody tr'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/user_credits?locale=en`
  }
  get samples() {

    return {
      'dateTomorrow with slash': this.props.sample.genDate(1),
    }
  }
}

module.exports = ShopUserCreditPage