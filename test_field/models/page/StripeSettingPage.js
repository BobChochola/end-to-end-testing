let Page = require('../../framework/models/Page.js')

class StripeSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('body[id="oauth-account-app"]'),
      'sign in button': this.by.css('a[href*="login"]'),
      'email field': this.by.css('input[id="email"]'),
      'password field': this.by.css('input[id="password"]'),
      'sign in to your account button': this.by.css('p.submit button'),
      'connect stripe account button': this.by.css('button[name="allow"]'),
      'remember me button': this.by.css('input[name="remember"]'),
    }

  }

  get isAngular() { return false }

  get samples() {

    return {
      'email': 'cooper@shoplineapp.com',
      'password': 'Afsda3232*(*',
    }

  }


}

module.exports = StripeSettingPage
