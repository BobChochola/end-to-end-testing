let Page = require('../../framework/models/Page.js')

class ShopForgotPasswordPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-controller="PasswordsNewController"]'),
      'language dropdown': this.by.css('#fixed-menu-container .dropdown-toggle'),
      'language dropdown option': this.by.css('.dropdown-menu.menu-button li'),
      'account field': this.by.css('#new_user input'),
      'sent reset password button': this.by.css('.btn.btn-success'),
      'success message': this.by.css('div[ng-repeat="message in userForm.successMessages"]'),
      'mobile check session': this.by.css('.mobile-check-process'),
      'send me check code button': this.by.css('button[ng-click="sendCode(resource.countryCallingCode, resource.mobilePhone)"]'),
      'check code field': this.by.css('[ng-model="resource.code"]'),
    }
  }

  get samples() {
    return {
      'account email': this.props.adminAccount.email,
      'check code': `${this.getVariable('message content')}`.replace(/[^0-9]/g,'').substr(-5, 4),
      'check code phone': '0912345678',
    }
  }

}

module.exports = ShopForgotPasswordPage
