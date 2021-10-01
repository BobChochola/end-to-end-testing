let Page = require('../../framework/models/Page.js')

class ShopSignUpPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="RegistrationsNewController"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'name field': this.by.css('input[name="name"]'),
      'email field': this.by.css('input[name="email"]'),
      'password field': this.by.css('input[name="password"]'),
      'success message': this.by.css('div[ng-repeat="message in userForm.successMessages"]'),
      'submit button': this.by.css('[ng-controller="RegistrationsNewController"] button[ng-click="formSubmit()"]:not([disabled="disabled"])'),
      'error alert': this.by.css('.alert-danger:not(.ng-hide)'),
      'mobile field': this.by.css('[name="mobilePhone"]'),
      'field error': this.by.css('.help-block:not(.ng-hide)'),
      'mobile check session': this.by.css('.mobile-check-process'),
      'send me check code button': this.by.css('button[ng-click="sendCode(resource.countryCallingCode, resource.mobilePhone)"]'),
      'check code field': this.by.css('[ng-model="resource.code"]'),
      'sign up selection dropdown': this.by.css('select[name="user_sign_up_selection"]'),
      'sign up selection dropdown option': this.by.css('select[name="user_sign_up_selection"] option'),
      'country list dropdown': this.by.css('div.iti__selected-flag'),
      'country dropdown option': this.by.css('ul.iti__country-list li.iti__country'),
      'agree terms checkbox': this.by.css('[ng-show^="featureService.hasFeature"] [type="checkbox"]'),
      'gender dropdown': this.by.css('select[name="user_gender"]'),
      'gender dropdown option': this.by.css('select[name="user_gender"] option'),
      'register with facebook button': this.by.css('div.tab-pane.active .btn-facebook-login'),
      'fb message plugin':this.by.css('iframe[title*="fb:send_to_messenger"]'),
      'send messenger checkbox':this.by.css('[role="button"]:not(.hidden_elem)'),
      'fb msg turn off button':this.by.css('button[ng-click="optOut()"]'),
      'gender dropdown': this.by.css('select[name="user_gender"]'),
      'gender dropdown option': this.by.css('select[name="user_gender"] option'),
      'confirmation block': this.by.css('div[class="confirmation-block text-center"]'),
      'line login button': this.by.css('.tab-pane.active .btn.btn-line-login'),
      'confirmation block': this.by.css('div.confirmation-block.text-center'),
      'sign up type dropdown': this.by.css('select[ng-change="changeSignupSelection()"]'),
      'sign up type dropdown option': this.by.css('select[ng-change="changeSignupSelection()"] option'),
      'line message plugin':this.by.css('div.line-messenger'),
      'send to my line checkbox': this.by.css('input[ng-model="line.isChecked"]'),
      'line msg turn off button':this.by.css('button[ng-click="handleDeactivateSubscription()"]'),
      'successful notice': this.by.css('div[role="alert"]'),
      'send via mail and sms checkbox': this.by.css('input.text-left.ng-pristine.ng-untouched.ng-valid.ng-empty'),
    }
  }

  get samples() {
    return {
      'name': '陳小明',
      'account email': this.props.adminAccount.email,
      'new account email': `${this.props.sample.genNewEmail()}`,
      'account password': '1234567890',
      'new account password': this.props.loginAccount.password,
      'wrong password': '87654321',
      'phone': `${this.props.sample.genTwPhone()}`,
      'verify phone': `${this.props.sample.genTwPhone().split('').splice(4, 0, ' ').splice(8, 0, ' ').splice(12, 0, ' ')}`,
      'check code': `${this.getVariable('message content')}`.replace(/[^0-9]/g,'').substr(-5, 4),
      'check code phone': `${this.props.sample.genTwPhone()}`,
      'line email': 'testuser@shoplineapp.com',
      'qa line email': 'shoplinetesterg@gmail.com',
      'notification email': this.props.loginAccount.notificationEmail,
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/users/sign_up/?locale=en`
  }
}

module.exports = ShopSignUpPage