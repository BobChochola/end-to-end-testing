let Page = require('../../framework/models/Page.js')

class ShopReturnOrderSuccessPage extends Page {

  get elements() {

    return {
      'id': this.by.css('section[class*="return-confirmed-section"]'),
      'popover': this.by.css('div[class*="modal-dialog"]'),
      'message text field': this.by.css('textarea[name="message_text"]'),
      'message send button': this.by.css('div[class*="modal-dialog"] button[id="btn-form-submit-modal"]'),
      'return order confirm image': this.by.css('img[alt="apply-return-confirmation"]'),
      'mail account': this.by.css('p[class="confirm-email"]'),

      // return order info
      'return order number info': this.by.css('div[class*="return-section-title"]'),
      'return date': this.by.css('div[class="return-order-detail-header"] div[class="col-md-3"]:nth-child(1)'),
      'return method': this.by.css('div[class="return-order-detail-header"] div[class="col-md-3"]:nth-child(2)'),
      'delivery tracking number': this.by.css('span[class*="delivery-tracking-id"]'),
      'return status': this.by.css('div[ng-class*="returnOrder.order_delivery_status"]'),
      'refund status': this.by.css('div[ng-class*="returnOrder.order_payment_status"]'),
      'row of return product name': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(1)'),
      'row of return product quantity': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(2)'),
      'row of return product reason': this.by.css('div[ng-repeat*="returnItems"] div[class*="col-sm"]:nth-child(4)'),
      'refund description': this.by.css('div[class="return-order-detail-footer"] div[class="col-md-6"]:nth-child(1)'),
      'return order link': this.by.css('div[class="return-order-detail-footer"] a[href*="/return_orders/"]'),
      'contact us link': this.by.css('p[ng-bind-html*="return_order.confirmation.refund_question"] a'),
      'go to shoppping button': this.by.css('a[class*="btn-continue-shopping"]'),
   
    }

  }

  get samples() {
    return {
      'today date': `${this.props.sample.genDate(0,0,'-')}`
    }
  }

}

module.exports = ShopReturnOrderSuccessPage
