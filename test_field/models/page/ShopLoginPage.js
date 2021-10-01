let Page = require('../../framework/models/Page.js')

class ShopLoginPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="userForm"]'),
      'email field': this.by.css('div.tab-pane.active [name*="email"]'),
      'password field': this.by.css('div.tab-pane.active [name*="password"]'),
      'sign up button': this.by.css('div[class="links-container"] a[href="/users/sign_up"]'),
      'submit button': this.by.css('[ng-controller="SessionsNewController"] button[ng-click="formSubmit()"]'),
      'menu button': this.by.css('#fixed-menu-container a.left-panel-button.menu-button'),
      'error message box': this.by.css('div[ng-show="userForm.errorMessage"]'),
      'agree terms checkbox': this.by.css('[ng-show^="featureService.hasFeature"] [type="checkbox"]'),
      // sign up tab
      'switch to signup tab button': this.by.css('.nav-tabs li:nth-child(1) a'),
      'signup email field': this.by.css('[ng-controller="RegistrationsNewController"] [type="email"]'),
      'signup password field': this.by.css('[ng-controller="RegistrationsNewController"] [type="password"]'),
      'signup name field': this.by.css('[ng-controller="RegistrationsNewController"] [name="name"]'),
      'signup submit button': this.by.css('[ng-controller="RegistrationsNewController"] button[ng-click="formSubmit()"]:not([disabled="disabled"])'),
      'error alert': this.by.css('.alert-danger'),
      'birthday field': this.by.css('input[name="user_birthday"]'),
      'calendar table': this.by.css('.uib-datepicker-popup'),
      'accepts marketing checkbox': this.by.css('input[ng-model="subscription_tags[\'marketing.news\']"]'),

      "fb login button": this.by.css('a[href="/users/auth/facebook"]'),
      "facebook email field": this.by.css('input[id="email"]'),
      "facebook password field": this.by.css('input[id="pass"]'),
      "facebook login button": this.by.css('button[name="login"]'),
      "facebook login confirm button": this.by.css('button[name="__CONFIRM__"]'),
      "Sign-in-as-merchant links-container": this.by.css('a[href*="https://admin.shoplineapp.com/admin/"]'),
      'account field': this.by.css('[name="mobile_phone_or_email"]'),
      'forgot password button': this.by.css('a[href="/users/password/new"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'line login button': this.by.css('.tab-pane.active .btn.btn-line-login'),

      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
    }

  }

  get samples() {

    return {
      'name': '陳小明',
      'email': this.props.adminAccount.email,
      'password': '1234567890',
      'fake email': 'aaaaaa@gmail.com',
      'new account email': `${this.props.sample.genNewEmail()}`,
      'new account password': this.props.loginAccount.password,
      'facebook email': 'testuser@shoplineapp.com',
      'test phone': '0912345678',
      'qa name': 'shoplineqa',
      'qa email': 'shoplineqa@gmail.com',
      'line email': 'testuser@shoplineapp.com',
      'line password': 'testuser001',
      'qa line email': 'shoplinetesterg@gmail.com',
      'timeNow': `${this.props.sample.genTime()}`,
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/users/sign_in/?locale=en`

  }

}

module.exports = ShopLoginPage
