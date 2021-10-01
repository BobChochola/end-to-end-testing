let Page = require('../../framework/models/Page.js')

class ShopOrdersPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="MemberOrdersController"]'),
      'member center tab': this.by.css('.nav-tabs a'),
      'row of order links': this.by.css('tr.order-hover a[href*="/orders/"]'),
      'row of order': this.by.css('tr[ng-repeat="order in orderItems track by order._id"]'),
      'order result': this.by.css('div[ng-controller="MemberOrdersController"]'),
      'return order progress button': this.by.css('a[ng-if*="return_order_ids"]'),
    }
  }

  get samples() {
    return {
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    }
  }

}

module.exports = ShopOrdersPage