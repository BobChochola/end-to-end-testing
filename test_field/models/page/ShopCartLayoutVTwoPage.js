let Page = require('../../framework/models/Page.js')

class ShopCartLayoutVTwoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.page-cart[id="checkout-container"]'),
      'language dropdown': this.by.css('div[class*="App-languageDropdown"]'),
      'language dropdown option': this.by.css('li[class*="sl-language-chooser-language"]'),
      'row of cart item': this.by.css('div[class="col-xs-12 col-sm-3 item-information"]'),
      'country list dropdown': this.by.css('select[id="order-delivery-country"]'),
      'delivery method dropdown': this.by.css('select[id="order-delivery-method"]'),
      'payment method dropdown': this.by.css('select[id="order-payment-method"]'),
      'country dropdown option': this.by.css('select[id="order-delivery-country"] option'),
      'delivery dropdown option': this.by.css('select[id="order-delivery-method"] option'),
      'payment dropdown option': this.by.css('select[id="order-payment-method"] option'),
      'member reminder': this.by.css('p[class="clearfix"]'),
      'proceed to checkout button': this.by.css('a[href$="checkout"]'),
      'row of unit price': this.by.css('div[class="col-xs-12 col-sm-2 text-center item-price"]'),
      'login button': this.by.css('.NavigationBar.mod-desktop a[href*="/users/"]'),
      'remove button': this.by.css('div.col-xs-12.col-sm-1.text-center.item-action > a > i'),
      'delete confirmation popover': this.by.css('div[class="modal-confirm ng-scope"]'),
      'ok button': this.by.css('button[class="btn-confirm ng-binding"]'),
      'empty message': this.by.css('.shopping-cart-empty'),
      'cart button': this.by.css('li[class="List-item"] .CartPanel-toggleButton.sl-cart-toggle'),
      'cart panel': this.by.css('div[id="cart-panel"]'),
      'promotion description': this.by.css('.cart-promotions'),
      'item quantity field': this.by.css('input[name="item_quantity"]'),
      'message shop popover': this.by.css('div[ng-controller="MessageFormController"]'),

      // Kingsman
      'kingsman member center button': this.by.css('svg[class="icons icon-user"]'),
      'member center button': this.by.css('a[class="NavigationBar-actionMenu-button"]'),
      // UltraChic
      'ultrachic member center button': this.by.css('svg.icons.icon-person'),

      //trial limit merchant
      'trial merchant message': this.by.css('div[class*="trial-banner"]'),
      'popup': this.by.css('div.modal-dialog'),
      'order limit image': this.by.css('div.modal-dialog img[class="dialog-img"]'),
      'contact store button': this.by.css('.trial-order-dialog a[ng-click*="cancel()"]'),
      'continue shopping button': this.by.css('.trial-order-dialog a[class*="checkout-btn"]'),
      'start checkout button': this.by.css('div.modal-dialog button[ng-click="confirm()"]'),
      'close popup area': this.by.css('.modal-window'),
    }

  }

  get samples() {

    return {
      'member reminder': 'Already a member? Login for easier order tracking and faster checkout!',
      'shop checkout layout vtwo': `${this.props.sample.genShopURL(this.props.account.handle)}/checkout?locale=en`,
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/cart?locale=en`

  }

}

module.exports = ShopCartLayoutVTwoPage