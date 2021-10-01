let Page = require('../../framework/models/Page.js')

class ShopOrdersLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="MemberOrdersController"]'),
      'row of order links': this.by.css('tr.order-hover a.btn'),
      'row of order number': this.by.css('tr[ng-repeat*="orderItems"] td:nth-child(1)'),
      'view button': this.by.css('tr[ng-repeat*="orderItems"] a[href*=order]'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/orders?locale=en`
  }
}

module.exports = ShopOrdersLayoutVTwoPage