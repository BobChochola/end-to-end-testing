let Page = require('../../framework/models/Page.js')

class PaypalAccountConnectPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[action*="/signup"]'),
      'email field': this.by.css('input[name*="email"]'),
      'select region dropdown': this.by.css('div.Select-label'),
      'login button': this.by.css('[id="continueButton"]'),
    }

  }
}

module.exports = PaypalAccountConnectPage 
