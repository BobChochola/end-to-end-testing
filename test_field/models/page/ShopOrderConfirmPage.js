let Page = require('../../framework/models/Page.js')

class ShopOrderConfirmPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.orders.confirm'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('#fixed-menu-container ul.dropdown-menu li'),
      'sign in button': this.by.css('div.hint.alert.alert-info [href="/users/sign_in"]'),
      'member center button': this.by.css('.member-myaccount-button'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'summary collapse': this.by.css('div.cart-summary'),
      'row of product items': this.by.css('div.table-row.cart-item'),
      'row of promotion list': this.by.css('div.cart-promotions div.cart-promotions div[class*="promotion"]'),
      'row of product image': this.by.css('.product-image'),
      'row of product unit price': this.by.css('div.item-price'),
      'row of product quantity': this.by.css('div.item-quantity'),
      'row of product subtotal': this.by.css('.row.cart-item .item-total'),
      'row of order detail': this.by.css('.order-detail-section .row'),
      'row of delivery detail': this.by.css('.delivery-detail .row'),
      'row of payment detail': this.by.css('.panel-body div:nth-child(2) > div:nth-child(2) > .row'),
      'delivery detail': this.by.css('div[class*="delivery-detail"]'),
      'payment detail': this.by.css('[class="row"]:nth-child(3) div[class="col-sm-6 order-detail-section"]'),
      'order confirm info': this.by.css('.confirm-message'),
      'item subtotal': this.by.css('div.subtotal'),
      'discount applied': this.by.css('div.cart-promotions'),
      'delivery fee': this.by.css('div.delivery-fee'),
      'applied store credits': this.by.css('div.applied-store-credits'),
      'total': this.by.css('div.total'),
      'error alert': this.by.css('div#checkout-errors'),
      'member offer applied': this.by.css('div.cart-promotions'),
      'credit': this.by.css('.applied-store-credits'),
      'order update notifications field': this.by.css('div[class="col-sm-6 order-notification-section"]'),
      'shop and customer comments field': this.by.css('textarea[placeholder="Enter a comment for this order"]'),
      'send button': this.by.css('button[id="btn-form-submit"]'),
      'message sender content': this.by.css('li[class="media ng-scope message-sender"]'),
      'message recipient content': this.by.css('li[class="media ng-scope message-recipient"]'),
      'message image content': this.by.css('a.cursor-pointer img[src]'),
      'remarks for shop content': this.by.css('div[class="col-sm-12"]'),
      'image selector': this.by.css('input[ng-file-select="onFileSelect($files)"]'),
      'delete image button': this.by.css('[ng-click="deleteMedia()"]'),
      'item discount applied': this.by.css('.order-summary .discount'),
      'tax fee': this.by.css('div.tax-fee'),
      'tax fee icon': this.by.css('a.tax-fee-icon'),
      'tax fee popover': this.by.css('div.tax-fee-popover'),
      'points earned': this.by.css('.member-point'),
      'recaptcha popover': this.by.css('iframe[title="recaptcha challenge"]'),
      'close recaptcha area': this.by.css('div[style*="top: 0px"]'),
      'add photo button with recaptcha': this.by.css('button[id="select-media-recaptcha"]'),
      'send button with recaptcha': this.by.css('button[id="form-submit-recaptcha"]'),
      'order summary': this.by.css('.order-summary'),
      'you will be charged for shipping message': this.by.css('div.delivery-fee-notice'),
      'row of applied discount': this.by.css('div.cart-promotions div.promotion'),
      'sign in button': this.by.css('a.link[href="/users/sign_in"]'),
      'fb message plugin':this.by.css('iframe[title*="fb:send_to_messenger"]'),
      'send messenger checkbox':this.by.css('[role="button"]:not(.hidden_elem)'),
      'fb msg turn off button':this.by.css('button[ng-click="optOut()"]'),
      'line message plugin': this.by.css('div.line-messenger'),
      'line msg turn off button':this.by.css('button[ng-click="handleDeactivateSubscription()"]'),
      'send to my line checkbox': this.by.css('input[ng-model="line.isChecked"]'),
      // order cancel
      'check order footer': this.by.css('#checkout-container > div > div:nth-child(5) > div'),
      'order view hyperlink': this.by.css('span[ng-bind-html] a[href$="edit"]'),
    }
  }

  get samples() {
    return {
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'phone': '0912345678',
      'address': "123 white street",
      'message photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'special shop message content': '<test order shop content>',
      'full choose date': `${this.props.sample.genDate((this.props.sample.genOnlyDate()>parseInt(this.getVariable('choose date'))?this.props.sample.getDaysInMonth(this.props.sample.genMonth()):0)-this.props.sample.genOnlyDate()+parseInt(this.getVariable('choose date')),0,'-')}`,
    }
  }
}

module.exports = ShopOrderConfirmPage
