let Page = require('../../framework/models/Page.js')

class ShopExpressCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('#product-page'),
      'image': this.by.css('.editor-boxify-image-wrapper img'),
      'first option dropdown': this.by.css('.product-content-button:nth-of-type(2) select'),
      'second option dropdown': this.by.css('.product-content-button:nth-of-type(3) select'),
      'quantity field': this.by.css('.ckbox-info [ng-show="product.variations.length"]'),
      'option': this.by.css('.ckbox-info select option'),
      'add quantity button': this.by.css('.input-group:first-child button[ng-click="updateItemQuantity(variationSelected, 1)"]'),
      'sub quantity button': this.by.css('.input-group:first-child button[ng-click="updateItemQuantity(variationSelected, -1)"]'),
      'delivery method dropdown': this.by.css('select[id="order-delivery-method"]'),
      'payment method dropdown': this.by.css('select[id="order-payment-method"]'),
      'country list dropdown': this.by.css('select[id="order-delivery-country"]'),
      'country dropdown option': this.by.css('select[id="order-delivery-country"] option'),
      'delivery dropdown option': this.by.css('select[id="order-delivery-method"] option'),
      'payment dropdown option': this.by.css('select[id="order-payment-method"] option'),
      'apply coupon code button': this.by.css('.cart-coupon a.btn'),
      'coupon code field': this.by.css('input#order-coupon'),
      'apply button':this.by.css('a[class="btn btn-link btn-toggle use-coupon"]'),
      'coupon error message': this.by.css('.cart-coupon .help-block'),
      'buy now button': this.by.css('#product-page-checkout-btn'),
      'message button': this.by.css('[ng-click^="showMessageForm"]'),
      'message form': this.by.css('[ng-controller="MessageFormController"]'),
      'email field': this.by.css('[name="sender_email"]'),
      'message field': this.by.css('[name="message_text"]'),
      'send button': this.by.css('#btn-form-submit-modal'),
      'unit product price': this.by.css('.vertical-align-product-content'),
      'product price': this.by.css('.product-price'),
      'product name': this.by.css('.product-title'),
      'product image': this.by.css('.product-des-img img'),
      'delivery fee': this.by.css('.delivery-fee'),
      'item subtotal': this.by.css('.subtotal'),
      'total': this.by.css('.total'),
      'applied store credits': this.by.css('.applied-store-credits span:last-of-type'),
      'applied store credits button': this.by.css('.applied-store-credits a.btn-toggle'),
      'apply store credits field':this.by.css('input[class="form-control"][type="number"]'),
      'apply credit button': this.by.css('form[id="apply-credit-form"] a[class="btn btn-color-primary btn-apply"]'),
      'reminder':this.by.css('div[class="error-text"]'),
      'used credit':this.by.css('span[class="pull-right user-credits-label"]'),
      'remaining hint': this.by.css('span[class$="user-credits-remaining-hint"]'),
      'available time info': this.by.css('.product-available-info'),
      'delivery description': this.by.css('span.help-block'),
      'applied promotion': this.by.css('div.cart-promotions'),
      //mobile
      'unit price': this.by.css('span.product-head.pull-right.ng-binding'),
      'mobile quantity field': this.by.css('input.form-control.text-center.ng-pristine.ng-untouched.ng-valid.ng-not-empty.ng-valid-pattern'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/pages/${this.pageTitle}/?locale=en`
  }

  get samples() {

    return {
      'email': this.props.adminAccount.email,
      'message': 'test for express checkout page message feature',
      'unavailable time': `Product will be unavailable on ${this.props.sample.genDate(2)} 00:00`,
    }

  }
}

module.exports = ShopExpressCheckoutPage