let Page = require('../../framework/models/Page.js')

class ShopUserProfilePage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="UsersEditController"]'),
      'alert': this.by.css('.alert.alert-success'),
      'tab':this.by.css('a[ng-click="select($event)"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'member center tab': this.by.css('.nav-tabs a'),
      'logout button': this.by.css('.member-center-logout'),

      //profile
      'row of membership detail list': this.by.css('.detail-item'),
      'membership level': this.by.css('.member-level'),
      'membership next level detail': this.by.css('.membership-next-tier'),
      'continue shopping link': this.by.css('.condition-item a'),
      'name field': this.by.css('input[name="user_name"]'),
      'email field': this.by.css('[name="user_email"]'),
      'birthday field': this.by.css('[name="birthday"]'),
      'remove address button': this.by.css('button[ng-click="onDeliveryAddressDelete($index)"]'),
      'add new address button': this.by.css('a[ng-click="onDeliveryAddressAdd()"]'),
      'recipient name field': this.by.css('[name^="addr_recipient_name"]'),
      'recipient phone number field': this.by.css('[name^="addr_recipient_phone"]'),
      'phone country dropdown': this.by.css('ul.iti__country-list'),
      'phone country dropdown option': this.by.css('ul.iti__country-list li.iti__country'),
      'gender dropdown': this.by.css('[name="gender"]'),
      'gender dropdown option': this.by.css('[name="gender"] option'),
      'save button': this.by.css('button[ng-click="formSubmit()"]'),
      'save successfully message': this.by.css('div[ng-repeat="message in successMessages track by $index"]'),
      'field error message': this.by.css('[ng-show="hasError"][class="help-block ng-binding"]'),
      'remove phone number button': this.by.css('button[ng-click="onPhoneDelete($index)"]'),
      'add new number button':this.by.css('a[ng-click="onPhoneAdd()"]'),
      'phone number field':this.by.css('input[name="phone_0"]'),
      'facebook banner': this.by.css('[ng-if="user.facebook_id"]'),
      'fb message plugin':this.by.css('iframe[title*="fb:send_to_messenger"]'),
      'send messenger checkbox':this.by.css('[role="button"]:not(.hidden_elem)'),
      'fb msg turn off button':this.by.css('button[ng-click="optOut()"]'),
      'fb continue button':this.by.css('a[href*="confirm=1"]'),
      'accepts marketing checkbox': this.by.css('input[name="subscription_tags_marketing.news"]'),
      'email subscription unchecked checkbox': this.by.css('.email-messenger .ng-empty'),
      'email verification popup': this.by.css('div.modal-body.email-verification-dialog.ng-scope'),
      'email verification button': this.by.css('button[id="btn-form-submit-modal"]'),
      'email verification error': this.by.css('p[ng-show="hasError"][class="help-block ng-binding"]'),
      'verify status': this.by.css('span[ng-if="user_setting.email_verification.status"]'),
      'verification reminder': this.by.css('.email-verification-hint'),
      'update mobile number button': this.by.css('[ng-click="updateMobile()"]'),
      'mobile number field': this.by.css('[ng-model="mobileForm.mobilePhone"]'),
      'send me check code button': this.by.css('[ng-click="verifyPhoneSubmit()"]'),
      'send me check code submit button': this.by.css('[ng-click="sendCode(resource.countryCallingCode, resource.mobilePhone)"]'),
      'check code field': this.by.css('[ng-model="resource.code"]'),
      'country list dropdown': this.by.css('div.iti__selected-flag'),
      'line message plugin':this.by.css('div.line-messenger'),
      'send to my line checkbox': this.by.css('input[ng-model="line.isChecked"]'),
      'line msg turn off button':this.by.css('button[ng-click="handleDeactivateSubscription()"]'),
      'tab':this.by.css('a[ng-click="select($event)"]'),
      'row of credit list':this.by.css('tr[ng-show="userCredits.length"]'),
      // member point
      'point balance amount':this.by.css('.PromotionInfo-qualifications.member-points-balance .points-balance.ng-binding'),

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
      'qa line email': 'shoplinetesterg@gmail.com',
      'verification error message': 'Email is taken. Please enter another email',
      'new check code': `${this.getVariable('message contents')}`.replace(/[^0-9]/g,'').substr(-5, 4),
      'six month membership expiry date': `Membership Expiry Date ${this.props.sample.genDate(0,6).replace(/\/0/g,'/')}`,
      'dateTomorrow with slash': this.props.sample.genDate(1),
   }
  }

}

module.exports = ShopUserProfilePage