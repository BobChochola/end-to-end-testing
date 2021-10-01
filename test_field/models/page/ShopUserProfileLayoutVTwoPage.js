let Page = require('../../framework/models/Page.js')

class ShopUserProfileLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="UsersEditController"]'),
      'member center tab': this.by.css('div.Tab-label'),
      'email field': this.by.css('[name="user_email"]'),
      'save button': this.by.css('button[ng-click="formSubmit()"]'),
      'save successfully message': this.by.css('div[ng-repeat="message in successMessages track by $index"]'),
      'accepts marketing checkbox': this.by.css('input[name="subscription_tags_marketing.news"]'),
      'logout button': this.by.css('a[href="/signout"]'),
      //phone number
      'add new number button':this.by.css('a[ng-click="onPhoneAdd()"]'),
      'phone number field':this.by.css('input[name="phone_0"]'),
      'remove phone number button': this.by.css('button[ng-click="onPhoneDelete($index)"]'),

      //address
      'remove address button': this.by.css('button[ng-click="onDeliveryAddressDelete($index)"]'),
      'add new address button': this.by.css('a[ng-click="onDeliveryAddressAdd()"]'),
      'recipient name field': this.by.css('[name^="addr_recipient_name"]'),
      'recipient phone number field': this.by.css('[name^="addr_recipient_phone"]'),

      'recipient address dropdown': this.by.css('[ng-repeat="addr in user.delivery_addresses"] select'),
      'recipient address dropdown option': this.by.css('[ng-repeat="addr in user.delivery_addresses"] select option'),
      'recipient address field': this.by.css('[addr="addr"] input:not([type="hidden"])'),

      //product review
      'product review area': this.by.css('.product-review-block'),
      'write a review button': this.by.css('a[href*=product_review_comments]'),

      //address modularize
      'recipient address dropdown': this.by.css('[ng-repeat="addr in user.delivery_addresses"] select'),
      'recipient address dropdown option': this.by.css('[ng-repeat="addr in user.delivery_addresses"] select option'),
      'recipient address field': this.by.css('input[ng-model="addr[preference.field_name]"]'),
      'recipient postcode field': this.by.css('[ng-model="addr[\'postcode\']"]')
     }
  }

  get samples() {
   return {
      'name': '陳小明',
      'phone': '0912345678',
      'address': '14F., No.44, Ln. 11, Guangfu N. Rd.',
      'email': this.props.adminAccount.email,
      'temp email': `${this.props.sample.genNewEmail()}`,
      'facebook email': 'testuser@shoplineapp.com',
      'phone number': '0987654321',
      'greenvines product index page': `https://www.greenvines.com.tw/products?locale=en`,
      'allyoung product index page': `https://www.allyoung.com.tw/products?locale=en`,
      'robinmaybag product index page': `https://www.robinmaybag.com/products?locale=en`,
      'lesenphants product index page': `https://www.lesenphants.com.tw/products?locale=en`,
      'theodorawatches product index page': `https://www.theodorawatches.com/products?locale=en`,
      'rococofashion product index page': `https://www.rococofashion.com/products?locale=en`,
   }
  }
}
module.exports = ShopUserProfileLayoutVTwoPage