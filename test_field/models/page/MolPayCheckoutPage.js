let Page = require('../../framework/models/Page.js')

class MolPayCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[id="form-wrapper"]'),
      'payment button': this.by.css('[id="channel"]'),
      'seven button': this.by.css('[id="cash711"]'),
      'agree checkbox': this.by.css('input[id="terms"]'),
      'pay online through FPX button': this.by.css('button[name="fpmsubmit"]'),
      'proceed button': this.by.css('button[type="submit"]'),
      'Back to Merchant Site Button': this.by.css('div.button.normal.center'),
      'HSBC checkbox': this.by.css('input#HSBC0223'),
      'mail field': this.by.css('input[type="email"]'),
      'agree button': this.by.css('input[id="btnSubmit"]'),
      'HSBC cancel button': this.by.css('a[title="Cancel"]'),
      'complete transaction button': this.by.css('[value="Click Here to Complete Your Transaction"]'),
    }
  }

}

module.exports = MolPayCheckoutPage
