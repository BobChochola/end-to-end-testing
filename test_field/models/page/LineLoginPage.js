let Page = require('../../framework/models/Page.js')

class LineLoginPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[role="main"]'),
      'email field': this.by.css('input[name="tid"]'),
      'password field': this.by.css('input[type="password"]'),
      'another account login button': this.by.css('a[href*="/oauth2/v2.1/relogin"]'),
      'authorize form': this.by.css('form[action="/oauth2/v2.1/authorize/consent"]'),
      'email permission button': this.by.css('div[class="c-checkbox__appearance is-true"]'),
      'allow button': this.by.css('button[type="submit"]'),
      'add as friend button':this.by.css('button[type="button"][name="allow"]'),
      'cancel button': this.by.css('button[name="deny"]'),
      'already added as friend form': this.by.css('[action="/oauth2/v2.1/beMyFriend/add"]'),
      'back button': this.by.css('button[name="deny"]'),
      'sign in button': this.by.css('button[type="submit"]'),
      'successful notice': this.by.css('div[role="alert"]'),
    }
  }

  get samples() {
    return {
      'line email': 'testuser@shoplineapp.com',
      'line 1on1 email': 'shopline1111@gmail.com',
      'line password': 'testuser001',
      'qa line email': 'shoplinetesterg@gmail.com',
    }
  }
}

module.exports = LineLoginPage