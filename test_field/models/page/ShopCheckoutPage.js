let Page = require('../../framework/models/Page.js')

class ShopCheckoutPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.page-checkout[id="checkout-container"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('#fixed-menu-container ul.dropdown-menu li'),
      'name field': this.by.css('input[id="order-customer-name"]'),
      'email address field': this.by.css('input[id="order-customer-email"]'),
      'phone country list dropdown': this.by.css('div.iti__selected-flag'),
      'phone country dropdown option': this.by.css('ul.iti__country-list li'),
      'contact number field': this.by.css('input[id="order-customer-phone"]'),

      'delivery detail': this.by.css('.delivery-form'),
      'recaptcha popover': this.by.css('iframe[title="recaptcha challenge"]'),
      'payment detail': this.by.css('.payment-form'),
      'delivery fee': this.by.css('.delivery-form div[class="pull-right"]'),
      'arrival date button': this.by.css('i[class="fa fa-calendar"]'),
      'arrival date field': this.by.css('[ng-model="deliveryDate"]'),
      'arrival time dropdown': this.by.css('select[name*="time_slot_key"]'),
      'arrival time dropdown option': this.by.css('select[name*="time_slot_key"] option'),
      'gender dropdown': this.by.css('select[id="order-customer-gender"]'),
      'gender dropdown option': this.by.css('select[id="order-customer-gender"] option'),
      'birthday field': this.by.css('input[id="order-customer-birthday"]'),
      'birthday button': this.by.css('span.input-group-btn'),
      'calendar table': this.by.css('ul[role="presentation"]'),
      'enabled date': this.by.css('td button[ng-click="select(dt.date)"]:not([disabled="disabled"])'),
      'sunday disabled': this.by.css('tr td[role="gridcell"]:nth-child(1) button[disabled="disabled"]'),
      'wednesday disabled': this.by.css('tr td[role="gridcell"]:nth-child(4) button[disabled="disabled"]'),

      'pick store button': this.by.css('div[ng-click="pickStore()"]'),
      'same as checkbox': this.by.css('[name="order[delivery_data][recipient_is_customer]"]'),
      'agree terms checkbox': this.by.css('input[name="policy"]'),
      'place order button': this.by.css('.btn.btn-success'),
      'error alert': this.by.css('div#checkout-errors'),
      'save number checkbox': this.by.css('input[name="order[save_customer_phone]"]'),

      'set as default address checkbox': this.by.css('input[name="saveFields[default_address]"]'),
      'become member checkbox':this.by.css('input[name="saveFields[all]"]'),
      'accept marketing checkbox':this.by.css('input[name="saveFields[marketing]"]'),
      'store pick up city dropdown': this.by.css('select[name="level_1"]'),
      'store pick up city dropdown option': this.by.css('select[name="level_1"] option'),
      'store pick up area dropdown': this.by.css('select[name="level_2"]'),
      'store pick up area dropdown option': this.by.css('select[name="level_2"] option'),
      'store pick up district dropdown': this.by.css('select[name="level_3"]'),
      'store pick up district dropdown option': this.by.css('select[name="level_3"] option'),
      'store pick up store name dropdown': this.by.css('select[name="store"]'),
      'store pick up store name dropdown option': this.by.css('select[name="store"] option'),
      'store description': this.by.css('p[ng-show="selectedStore"]'),

      'cart summary': this.by.css('.cart-summary'),
      'row of product image': this.by.css('.product-image'),
      'order summary': this.by.css('.order-summary'),
      'order total': this.by.css('.summary-header'),
      'required field error': this.by.css('.error-block'),
      'checkout flow image': this.by.css('div[class="checkout-nav ng-scope"]'),
      'points earned': this.by.css('.member-point'),      
      'cart summar delivery fee': this.by.css('div.order-summary div.delivery-fee'),
      'you will be charged for shipping message': this.by.css('div.delivery-fee-notice'),

      'cardholder name field': this.by.css('input[id="payment-credit-card-holder-name"]'),
      'card number field': this.by.css('input[id="payment-credit-card-number"]'),
      'expiry date field': this.by.css('input[id="payment-credit-card-holder-expiry"]'),
      'cvc field': this.by.css('input[id="payment-credit-card-holder-cvc-val"]'),
      'credit card frame': this.by.css('[name="__privateStripeFrame3"]'),
      'expiry date frame': this.by.css('[name="__privateStripeFrame4"]'),
      'cvc frame': this.by.css('[name="__privateStripeFrame5"]'),

      'recipient name field': this.by.css('input#recipient-name'),
      'recipient contact number field': this.by.css('input#recipient-phone'),

      'stripe card number field': this.by.css('input[name="cardnumber"]'),
      'stripe expiry date field': this.by.css('input[name="exp-date"]'),
      'stripe cvc field': this.by.css('input[name="cvc"]'),
      'custom customer field': this.by.css('input[id^="user-field"]'),
      'customer field': this.by.css('input[id^="order-field"]'),
      'stripe credit card frame': this.by.css('#stripe-card-number [name*="__privateStripeFrame"]'),
      'stripe expiry date frame': this.by.css('#stripe-card-expiry [name*="__privateStripeFrame"]'),
      'stripe cvc frame': this.by.css('#stripe-card-cvc [name*="__privateStripeFrame"]'),

      'sf address region dropdown': this.by.css('select#sf-plus-home-region'),
      'sf address region dropdown option': this.by.css('select#sf-plus-home-region option'),
      'sf address district dropdown': this.by.css('select#sf-plus-home-district'),
      'sf address district dropdown option': this.by.css('select#sf-plus-home-district option'),
      'sf address area dropdown': this.by.css('select#sf-plus-home-area'),
      'sf address area dropdown option': this.by.css('select#sf-plus-home-area option'),
      'delivery time dropdown': this.by.css('select[name="order[delivery_data][time_slot]"]'),
      'delivery time dropdown option': this.by.css('select[name="order[delivery_data][time_slot]"] option'),
      'einvoice dropdown': this.by.css('select#invoice-type'),
      'einvoice dropdown option': this.by.css('select#invoice-type option'),
      'einvoice carrier dropdown': this.by.css('select#carrier-type'),
      'einvoice carrier dropdown option': this.by.css('select#carrier-type option'),
      'mobile barcode field': this.by.css('input[id="invoice-mobile-barcode"]'),
      'npc barcode field': this.by.css('input[id="invoice-npc-barcode"]'),
      'donate charity group': this.by.css('div[id="donation-unit"]'),
      'company invoice buyer name field': this.by.css('input[id="invoice-buyer-name"]'),
      'company invoice tax id field': this.by.css('input[id="invoice-tax-id"]'),
      'company invoice address field': this.by.css('.invoice-form #invoice-mailing-address:not([disabled])'),
      'remarks for shop field': this.by.css('textarea[id="order-remarks"]'),
      'total price': this.by.css('div.total'),
      'row of product items': this.by.css('div.table-row.cart-item'),
      'discount applied': this.by.css('div.cart-promotions'),
      'arrival time dropdown': this.by.css('[name="order[delivery_data][time_slot_key]"]'),
      'arrival time dropdown option': this.by.css('[name="order[delivery_data][time_slot_key]"] option'),
      'custom field': this.by.css('input[id="order-field-0"]'),
      'delivery city field': this.by.css('input[name="order[delivery_address][city]"]'),
      'shop code field': this.by.css('input#order-delivery-location_code'),
      'shop name field': this.by.css('input#order-delivery-location_name'),
      'delivery state field': this.by.css('input[name="order[delivery_address][state]"]'),
      'this month enabled date picker': this.by.css('tr td[role="gridcell"] button:not([disabled="disabled"]) span:not(.text-muted)'),
      'accepts marketing checkbox': this.by.css('input[name="saveFields[marketing]"]'),
      'fb message plugin': this.by.css('iframe[title*="fb:send_to_messenger"]'),
      'fb continue button': this.by.css('.fb_content a[href*="send_to_messenger"]'),
      'send messenger checkbox': this.by.css('[role="button"]:not(.hidden_elem)'),
      'fb msg turn off button': this.by.css('button[ng-click="optOut()"]'),
      'line message plugin': this.by.css('div.line-messenger'),
      'line msg turn off button':this.by.css('button[ng-click="handleDeactivateSubscription()"]'),
      'send to my line checkbox': this.by.css('input[ng-model="line.isChecked"]'),

      'login button': this.by.css('.section-body a[href="/users/sign_in"]'),
      'saved delivery address button': this.by.css('.invoice-form input[value="select-from-saved"]'),
      'invoice new address button': this.by.css('.invoice-form input[value="new"]'),
      'invoice country dropdown': this.by.css('.invoice-form select[ng-model="state.country"]'),
      'invoice country dropdown option': this.by.css('.invoice-form select[ng-model="state.country"] option'),
      'invoice city dropdown': this.by.css('.invoice-form select[ng-model="state.region"]'),
      'invoice city dropdown option': this.by.css('.invoice-form select[ng-model="state.region"] option'),
      'invoice district dropdown': this.by.css('.invoice-form select[ng-model="state.district"]'),
      'invoice district dropdown option': this.by.css('.invoice-form select[ng-model="state.district"] option'),
      'cart item price': this.by.css('.cart-item .item-price'),
      'cart item quantity': this.by.css('.cart-item .item-quantity'),
      'cart item subtotal': this.by.css('.cart-item .item-total'),

      //new delivery modularize address
      'delivery address dropdown': this.by.css('div[input-name-template="order[delivery_address][$field_name]"] select'),
      'delivery address dropdown option': this.by.css('div[input-name-template="order[delivery_address][$field_name]"] select option'),
      'delivery address field': this.by.css('input[name*="order[delivery_address]"]:not([type="hidden"])'),
      'delivery address post code field': this.by.css('input[name="order[delivery_address][postcode]"]'),
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
      'tappay no space card number': '4242422204184242',
      'tappay expiry date': '01/23',
      'braintree fail card number': '4000111111111115',
      'card number': '5110 0755 9534 7004',
      'no space card number': '5110075595347004',
      'expiry date': '07/22',
      'cvc': '123',
      'birthday': '1999/04/01',
      'date': this.props.sample.genDate(1),
      'custom': 'abcde',
      'shop code': '916527',
      'shop name': '清愿門市',
      'state': 'spain',
      'new name': `${this.props.sample.genName()}`,
      'new email': `${this.props.sample.genNewEmail()}`,
      'amount of available days with exclude day of week': `${this.props.sample.genDay() == 'Friday'? 2:3}`,

      'qa name': 'shoplineqa',
      'qa email': 'shoplineqa@gmail.com',

      'customer setting page': `${this.props.baseURL}/admin/${this.props.account.handle}/users/settings?locale=en`
    }

  }


}

module.exports = ShopCheckoutPage
