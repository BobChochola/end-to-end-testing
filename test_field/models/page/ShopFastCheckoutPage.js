let Page = require('../../framework/models/Page.js')

class ShopFastCheckoutPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.fast_checkout'),
      'error message': this.by.css('p.a-formPanel__inputError'),
      'login button': this.by.css('.a-formPanel__headerLabel a[href="/users/sign_in"]'),

      //paypal frame and elements
      'paypal frame': this.by.css('div[id="paypal-fast-checkout-button-fastCheckout"]:not(.ng-hide) iframe'),
      'paypal checkout button': this.by.css('.paypal-button'),

      //stripe frame and elements
      'stripe card number field': this.by.css('input[name="cardnumber"]'),
      'stripe expiry date field': this.by.css('input[name="exp-date"]'),
      'stripe cvc field': this.by.css('input[name="cvc"]'),
      'stripe credit card frame': this.by.css('[title="Secure card number input frame"]'),
      'stripe expiry date frame': this.by.css('[title="Secure expiration date input frame"]'),
      'stripe cvc frame': this.by.css('[title="Secure CVC input frame"]'),

      // customer area
      'customer name field': this.by.css('[name="customerName"]'),
      'customer email field': this.by.css('[name="customerEmail"]'),
      'become member checkbox': this.by.css('div.m-formPanel__footerWrapper:nth-child(2) .m-checkbox:nth-child(1)'),
      'accept marketing checkbox': this.by.css('[name="acceptMarketing"]'),

      // recipient area
      'recipient name field': this.by.css('[name="recipientName"]'),
      'recipient phone field': this.by.css('[name="recipientPhone"]'),
      'recipient phone dropdown': this.by.css('.selected-flag'),
      'recipient phone dropdown option': this.by.css('.country-list .country-name'),
      'recipient country dropdown': this.by.css('[name="country"]'),
      'recipient country dropdown option': this.by.css('[role="menuitem"]'),
      'recipient address field': this.by.css('input[name*="address"]'),
      'recipient address dropdown': this.by.css('.m-formPanel__body:nth-child(2) .-dropdown'),
      'recipient address dropdown option': this.by.css('.m-formPanel__body:nth-child(2) li'),
      'recipient city field': this.by.css('[name="rcForm-city"]'),
      'recipient post code field': this.by.css('[name="rcForm-postcode"]'),
      'save address checkbox': this.by.css('[name="saveDeliveryAddress"]'),

      // delivery area
      'delivery fee': this.by.css('.a-deliveryPanel__fee'),
      'delivery option': this.by.css('form > div:nth-child(3) .m-radioField__optionWrapper'),
      // 'applied free shipping': this.by.css(''),

      // payment area
      'payment option': this.by.css('form > div:nth-child(4) .m-radioField__optionWrapper'),
      'paypal checkbox': this.by.css('.a-radioField__option img[src*="checkout_payment/paypal"]'),
      'payment fee': this.by.css('.a-paymentPanel__fee'),
      'cardholder name field': this.by.css('.m-stripeCreditCardFields input'),

      // order remark
      'order remark field': this.by.css('[name="orderRemarks"]'),

      // product list
      'product list title': this.by.css('.a-cartTitlePanel-text'),
      'row of product': this.by.css('.m-cartItem'),
      'subtotal': this.by.css('.m-cartSubtotal'),
      'total': this.by.css('.m-cartTotal'),
      'promotion section': this.by.css('.m-promotionSection'),
      'row of promotion list': this.by.css('.m-discountItem'),
      'row of promotion delete button': this.by.css('.a-discountItem__deleteButton button'),
      'coupon field': this.by.css('.m-couponInput input.a-codeField__inputBox'),
      'coupon validate button': this.by.css('.m-couponInput button'),
      'coupon error message': this.by.css('.m-couponInput p.a-form__errMsg'),

      // place order area
      'agree to shop error message': this.by.css('.m-submitPanel .m-termPanel__error'),
      'error alert': this.by.css('.m-submitPanel .m-submitPanel__messagePanel'),
      'agree term label': this.by.css('.m-submitPanel .a-checkbox__label'),
      'agree terms checkbox': this.by.css('[name="terms"]'),
      'place order button': this.by.css('.m-formContent button[type="submit"]'),
    }

  }

   get samples() {

     return {
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'new customer email': this.props.sample.genNewEmail(),
      'account email': this.props.loginAccount.notificationEmail,
      'phone': '0912345678',
      'address': '14F., No.44, Ln. 11, Guangfu N. Rd.',
      'city': 'Taipei',
      'post code': '12345'
    }

  }

   get url() {

     return `${this.props.sample.genShopURL(this.props.account.handle)}/products?locale=en`
  }

}

module.exports = ShopFastCheckoutPage