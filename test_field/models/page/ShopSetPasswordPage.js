let Page = require('../../framework/models/Page.js')

class ShopSetPasswordPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-controller="PasswordsEditController"]'),
      'name field': this.by.css('.user-name-input'),
      'new password field': this.by.css('[name="password"]'),
      'confirm password field': this.by.css('[name="password_confirmation"]'),
      'change my password button': this.by.css('.btn.btn-success'),
    }
  }

  get samples() {

    return {
      'password': '1234567890',
    }

  }
}

module.exports = ShopSetPasswordPage
