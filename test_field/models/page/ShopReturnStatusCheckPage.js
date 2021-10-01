let Page = require('../../framework/models/Page.js')

class ShopReturnStatusCheckPage extends Page {

  get elements() {

    return {
      'id': this.by.css('section[class*="return-order-detail"]'),
      'go to order show page button': this.by.css('a[class*="back-to-order"]'),

      // return order info
      'return order number info': this.by.css('div[class*="return-section-title"]'),
      'return date': this.by.css('div[class="return-order-detail-header"] div[class="col-md-3"]:nth-child(1)'),
      'return method': this.by.css('div[class="return-order-detail-header"] div[class="col-md-3"]:nth-child(2)'),
      'return status': this.by.css('div[ng-class*="returnOrder.order_delivery_status"]'),
      'refund status': this.by.css('div[ng-class*="returnOrder.order_payment_status"]'),
      'row of return product name': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(1)'),
      'row of return product quantity': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(2)'),
      'row of return product reason': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(4)'),
      'row of inspection status': this.by.css('div[class*="inspect-result"]'),
      'row of product inspect status': this.by.css('div[class*="inspect-result"]'),

      'refund amount': this.by.css('section[class*="return-order-refund-section"] div[class="col-md-4"]:nth-child(1) div[ng-if*="refunded"]'),
      'refund date': this.by.css('section[class*="return-order-refund-section"] div[class="col-md-4"]:nth-child(2) div[ng-if*="refunded"]'),
      'refund option': this.by.css('section[class*="return-order-refund-section"] div[class="col-md-4"]:nth-child(3)'),
    }

  }

  get samples() {
    return {
      'today date': `${this.props.sample.genDate(0,0,'-')}`,
      'return order number': `${this.getVariable('return order info')}`.replace(/[^0-9]/g,''),
    }
  }

}

module.exports = ShopReturnStatusCheckPage
