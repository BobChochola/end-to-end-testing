let Page = require('../../framework/models/Page.js')

class ShopCheckoutLayoutVTwoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.page-checkout[id="checkout-container"]'),
      'language dropdown': this.by.css('div[class*="App-languageDropdown"]'),
      'language dropdown option': this.by.css('li[class*="sl-language-chooser-language"]'),
      'name field': this.by.css('input[id="order-customer-name"]'),
      'email address field': this.by.css('input[id="order-customer-email"]'),
      'contact number field': this.by.css('input[id="order-customer-phone"]'),
      'save number checkbox': this.by.css('input[name="order[save_customer_phone]"]'),
      'same as checkbox': this.by.css('[name="order[delivery_data][recipient_is_customer]"]'),
      'agree terms checkbox': this.by.css('input[name="policy"]'),
      'place order button': this.by.css('.btn.btn-success'),
      'order total': this.by.css('div[class="panel-header"]'),
      'back to cart link': this.by.css('a[class="btn btn-link pull-left"]'),
      'message shop popover': this.by.css('div[ng-controller="MessageFormController"]'),

      'cart button': this.by.css('nav:not(.mod-mobile) .CartPanel-toggleButton.sl-cart-toggle'),
      'cart panel': this.by.css('[id="cart-panel"]'),
      'product of remove button': this.by.css('div[id="cart-panel"] a[ng-click="removeItemFromCart(item._id,$event)"]'),
      'pick store button': this.by.css('div[ng-click="pickStore()"]'),

      //new delivery modularize address
      'delivery address dropdown': this.by.css('.form-group-address [ng-model="addr[preference.field_name]"]'),
      'delivery address dropdown option': this.by.css('.form-group-address select option'),
      'delivery address field': this.by.css('.form-group-address input[name*="order[delivery_address][address"]:not([type="hidden"])'),
      'delivery address post code field': this.by.css('input[name="order[delivery_address][postcode]"]'),

      'cart summary': this.by.css('.cart-summary'),
      'order summary': this.by.css('.order-summary'),
      'required field error': this.by.css('.error-block'),
      'checkout flow image': this.by.css('div[class="checkout-nav ng-scope"]'),
      'row of product items': this.by.css('div.table-row.cart-item'),
      'cart item price': this.by.css('.cart-item .item-price'),
      'cart item quantity': this.by.css('.cart-item .item-quantity'),
      'cart item subtotal': this.by.css('.cart-item .item-total'),
      'total price': this.by.css('div.total'),

      //trial limit merchant
      'trial merchant message': this.by.css('div[class*="trial-banner"]'),
      'popup': this.by.css('div.modal-dialog'),
      'order limit image': this.by.css('div.modal-dialog img[class="dialog-img"]'),
      'contact store button': this.by.css('.trial-order-dialog a[ng-click*="cancel()"]'),
      'continue shopping button': this.by.css('.trial-order-dialog a[class*="checkout-btn"]'),
      'start checkout button': this.by.css('div.modal-dialog button[ng-click="confirm()"]'),
      'close popup area': this.by.css('.modal-window'),
      'check upgrade plan button': this.by.css('button[class*="checkout-btn"]'),
    }

  }

  get samples() {

    return {
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'account email': this.props.loginAccount.notificationEmail,
      'phone': '0912345678',
      'address': '14F., No.44, Ln. 11, Guangfu N. Rd.',
      'city': 'Taipei',
      'card number': '5422882800700007',
      'expiry date': '07/20',
      'cvc': '123',
      'birthday': `${this.props.sample.genDate()}`,
      'date': this.props.sample.genDate(1),
      'custom': 'abcde',
      'shop code': '916527',
      'shop name': '清愿門市',
      'state': 'spain',
      'new name': `${this.props.sample.genName()}`,
      'new email': `${this.props.sample.genNewEmail()}`,
    }

  }


}

module.exports = ShopCheckoutLayoutVTwoPage 