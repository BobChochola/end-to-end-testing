let Page = require('../../framework/models/Page.js')

class ShopOrdersShowPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.orders.show'),
      'row of product list': this.by.css('div[class*="table-row"]'),
      'row of product name': this.by.css('div[class*="table-row"] div[class*="item-information"]'),
      'row of product promotion': this.by.css('div[class*="table-row"] div[class*="item-promotion"]'),
      'row of order detail': this.by.css('.order-detail-section .row'),
      'row of delivery detail': this.by.css('.delivery-detail .row'),
      'row of payment detail': this.by.css('.panel-body div:nth-child(2) > div:nth-child(2) > .row'),
      'order placing date': this.by.css('.order-detail-section .datetime'),
      'order info': this.by.css('.panel-order-info'),
      'delivery fee': this.by.css('div.delivery-fee'),
      'applied store credits': this.by.css('div.applied-store-credits'),
      'customer comments content': this.by.css('div[class="media-body info"]'),
      'message sender content': this.by.css('li[class="media ng-scope message-sender"]'),
      'message recipient content': this.by.css('li[class="media ng-scope message-recipient"]'),
      'message image content': this.by.css('a.cursor-pointer img[src]'),
      'remarks for shop content': this.by.css('div[class="col-sm-12"]'),
      'row of payment detail': this.by.css('div.panel.panel-order-info>div>div:nth-child(2)>div:nth-child(2)>div.row'),
      'row of delivery detail':this.by.css('.delivery-detail .row'),
      'delivery detail': this.by.css('div[class*="delivery-detail"]'),
      'payment detail': this.by.css('.panel-body div:nth-child(2) > div[class*="order-detail-section"]:nth-child(2)'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'member center button': this.by.css('.member-myaccount-button'),
      'apply return order button': this.by.css('a[class*="return-order-btn"]'),
      'return expiry date': this.by.css('p[class*="return-order-deadline"]'),
      'view return order button': this.by.css('a[class*="return-order-btn"]'),
      'shop and customer comments field': this.by.css('textarea[placeholder="Enter a comment for this order"]'),
      'send button': this.by.css('button[id="btn-form-submit"]'),
      'add photo button': this.by.css('button[ng-click="openFile()"]'),
      'send button with recaptcha': this.by.css('button[id="form-submit-recaptcha"]'),
      'close recaptcha area': this.by.css('div[style*="top: 0px"]'),
      'recaptcha popover': this.by.css('iframe[title="recaptcha challenge"]'),
      'order summary': this.by.css('.order-summary'),
      'you will be charged for shipping message': this.by.css('div.delivery-fee-notice'),
      'sign in button': this.by.css('a.link[href="/users/sign_in"]'),
      //order cancel
      'order cancel button': this.by.css('button[ng-click="openCancelModal()"]'),
      'order cancel popover': this.by.css('div.modal-body.ng-scope'),
      'reason for cancellation dropdown': this.by.css('select[name="reasonSelector"]'),
      'reason for cancellation dropdown option': this.by.css('select[name="reasonSelector"] option'),
      'confirm cancel button': this.by.css('button.theme-modal-btn.btn.btn-custom.btn-color-primary.btn-block.ng-binding'),
      'text limit': this.by.css('div.message-count.ng-binding'),
      'reason area': this.by.css('textarea[name="reasonMessage"]'),
      'error message': this.by.css('div.ng-scope > div.ng-isolate-scope > div > p'),
      'fail cancel popup': this.by.css('div.modal-body.ng-scope'),
      'succeed cancel popup': this.by.css('div.Customer-cancel-order-modal.ng-scope'),
      'ok button': this.by.css('button.btn.btn-custom.btn-color-primary.ng-binding'),

      'write a review button': this.by.css('.product-review-button a[ng-href*="product_review_comments"]'),
      'product review area': this.by.css('div.product-review-description'),
      'sign up button': this.by.css('[class*="panel-order-info"] a[href="/users/sign_up"]'),
    }
  }

  get url() { return; }

  get samples() {
    return {
      'order placing date': `${new Date(Date.now()).getDate()}`,
      'five day of return expiry date': `Return Expiry Date ${this.props.sample.genDate(5, 0, '-')}`,
      'more than 150 characters': 'This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words',
      'only 150 characters': 'This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over 150 words This is over',
    }
  }
}

module.exports = ShopOrdersShowPage