let Page = require('../../framework/models/Page.js')

class ShopCartPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.page-cart[id="checkout-container"]'),
      'menu button': this.by.css('#fixed-menu-container a.menu-button'),
      'profile button': this.by.css('#left-panel a[href$="edit"]'),
      'member center button': this.by.css('.member-myaccount-button'),
      'row of cart item': this.by.css('div.table-row.cart-item'),
      'row of cart item image': this.by.css('.item-information a'),
      'row of unit price': this.by.css('div[class="col-xs-12 col-sm-2 text-center item-price"]'),
      'country list dropdown': this.by.css('select[id="order-delivery-country"]'),
      'delivery method dropdown': this.by.css('select[id="order-delivery-method"]'),
      'payment method dropdown': this.by.css('select[id="order-payment-method"]'),
      'country dropdown option': this.by.css('select[id="order-delivery-country"] option'),
      'delivery dropdown option': this.by.css('select[id="order-delivery-method"] option'),
      'payment dropdown option': this.by.css('select[id="order-payment-method"] option'),
      'cart button': this.by.css('a[href="#cart-panel"]'),
      'cart panel': this.by.css('#cart-panel'),
      'cart panel remove button': this.by.css('[ng-click*="removeItemFromCart"]'),
      'checkout button': this.by.css('#btn-checkout'),
      'delivery fee': this.by.css('div.delivery-fee.ng-scope'),
      'SF delivery fee message': this.by.css('span[class="help-block"]'),
      'you will be charged for shipping message': this.by.css('div.delivery-fee-notice'),
      'proceed to checkout button': this.by.css('a[href$="checkout"]:not(.disabled)'),
      'points earned': this.by.css('.member-point.ng-scope'),
      'discount applied': this.by.css('.discount.ng-scope'),
      'apply coupon code button': this.by.css('div[class*="cart-coupon"] a[class*="use-coupon"]'),
      'coupon code field': this.by.css('input[id="order-coupon"]'),
      'promotion description': this.by.css('.cart-promotions'),
      'login button': this.by.css('.signin-signup-button'),
      'errors info': this.by.css('#checkout-errors'),
      'order summary': this.by.css('.order-summary'),
      'item quantity field': this.by.css('input[name="item_quantity"]'),
      'remove button': this.by.css('.btn-remove-cart-item'),
      'delete confirmation popover': this.by.css('.modal-dialog'),
      'ok button': this.by.css('[ng-click="submitConfirm()"]'),
      'empty message': this.by.css('.shopping-cart-empty'),
      'remove promotion button': this.by.css('a.btn.btn-link.btn-remove-coupon'),
      'member reminder': this.by.css('p[class="clearfix"]'),
      'promotion list': this.by.css('div[class="col-xs-12 col-sm-2 item-promotion"]'),
      'delivery description': this.by.css('span.help-block'),
      'promotion error info': this.by.css('p.help-block'),
      'sf district dropdown': this.by.css('#sf-express-district select'),
      'sf district dropdown option': this.by.css('#sf-express-district select option'),
      'sf location dropdown': this.by.css('#sf-express-location select'),
      'sf location dropdown option': this.by.css('#sf-express-location select option'),
      'free checkout label': this.by.css('label[for="order-payment-method"] + p'),
      'applied store credits': this.by.css('.applied-store-credits span:last-of-type'),
      'applied store credits button': this.by.css('.applied-store-credits a.btn-toggle'),
      'apply store credits field':this.by.css('input[class="form-control"][type="number"]'),
      'apply credit button': this.by.css('form[id="apply-credit-form"] a[class="btn btn-color-primary btn-apply"]'),
      'reminder':this.by.css('div[class="error-text"]'),
      'used credit':this.by.css('span[class="pull-right user-credits-label"]'),
      'row of applied promotion': this.by.css('.cart-promotions a[href*="/promotions"]'),
      'applied promotion': this.by.css('div[class*="cart-promotions"]'),
      'unapplied promotion': this.by.css('div.untriggered-promotions'),
      'summary collapse': this.by.css('div.cart-summary'),
      'row of unit price': this.by.css('div[class$="item-price"]'),
      'row of subtotal price': this.by.css('.cart-item .item-total'),
      'remaining hint': this.by.css('span[class$="user-credits-remaining-hint"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('#fixed-menu-container ul.dropdown-menu li'),
      'cart addon items price': this.by.css('.cart-addon-items .price'),
      'cart addon items button': this.by.css('.cart-addon-items button'),
      'cart item subtotal': this.by.css('.order-summary .subtotal'),
      'addon added to cart': this.by.css('div.cart-addon-items-overlay.active'),
      'decrease button': this.by.css('button[type="button"][class="btn btn-default btn-quantity-decrease"]'),
      'row of unit price': this.by.css('div[class="col-xs-12 col-sm-2 text-center item-price"]'),
      'total list': this.by.css('div[class="total ng-scope"]'),
      'row of product list': this.by.css('div[product-id="5b3ca2454e22a68e6a002ae4"]'),
      'total': this.by.css('.total'),
      'item promotions': this.by.css('.shopping-cart .cart-item .item-promotion'),
      'increase quantity button': this.by.css('.cart-item .btn-quantity-increase'),
      'shop all button': this.by.css('.navbar-menu-wrapper .container a[href="/products"]'),
      'freegift quantity': this.by.css('div[class*="free-gift-quantity"]'),
      'discount applied': this.by.css('div[checkout-cart-summary] div.discount'),

      'custom remark panel': this.by.css('div.panel.panel-custom-remarks'),
      'custom remark wording': this.by.css('span[style="serif;  font-size: xx-large; color: rgb(240, 12, 183); text-decoration-line: underline; font-style: italic; font-weight: bold;"]'),
      'custom remark image': this.by.css('img[src="https://upload.cc/i1/2019/10/23/C1SzvB.png"]'),
      'share cart link button': this.by.css('a[class="cart-share-btn"]'),
      'success alert': this.by.css('div.alert-success'),
      'selected delivery dropdown option': this.by.css('selected[id="order-delivery-method"] .selected'),
      'selected payment dropdown option': this.by.css('selected[id="order-payment-method"] .selected'),

      'total': this.by.css('.total'),
      'tax fee': this.by.css('div.tax-fee'),
      'tax fee icon': this.by.css('a.fa-question-circle.tax-fee-icon'),
      'tax fee popover': this.by.css('div.tax-fee-popover'),
      'language dropdown option': this.by.css('#fixed-menu-container ul.dropdown-menu li'),
    }

  }

  get samples() {

    return {
      'member reminder': 'Already a member? Login for easier order tracking and faster checkout!',
      'custom image':`${this.props.sample.sampleImagesPath()}/2.png`,
      'product photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'white variants product photo': `${this.props.sample.sampleImagesPath()}/white.jpg`,
      'yellow variants product photo': `${this.props.sample.sampleImagesPath()}/4.jpg`,
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/cart/?locale=en`

  }

}

module.exports = ShopCartPage
