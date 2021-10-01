let Page = require('../../framework/models/Page.js')

class PlanCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-app="admin_app"]'),
      'plan frame': this.by.css('#msiframe'),
      'row of purchase item name': this.by.css('table tr td:nth-child(1)'),
      'row of monthly price': this.by.css('table tr td:nth-child(2)'),
      'row of annually price': this.by.css('table tr td:nth-child(3)'),
      'row of remove button': this.by.css('table tr td:nth-child(4) svg'),
      'add back button': this.by.css('table tr td:nth-child(4) button'),
      'purchase error message': this.by.css('#root div > div > div > div > span[color="RED_700"]'),
      'confirm checkout information': this.by.css('body'),
      'checkout button': this.by.css('[height="LARGE"]'),
      'agree term checkbox': this.by.css('#root div > div > div > div [style*="padding"] label'),
      'monthly radio button': this.by.css('th:nth-child(2) label'),
      'annually radio button': this.by.css('th:nth-child(3) label'),
      'cardholder name field': this.by.css('[name="cardOwner"]'),
      'stripe credit card frame': this.by.css('[title="Secure card number input frame"]'),
      'stripe card number field': this.by.css('[name="cardnumber"]'),
      'stripe expiry date frame': this.by.css('[title="Secure expiration date input frame"]'),
      'stripe expiry date field': this.by.css('[name="exp-date"]'),
      'stripe cvc frame': this.by.css('[title="Secure CVC input frame"]'),
      'stripe cvc field': this.by.css('[name="cvc"]'),
      'alert': this.by.css('#root'),
      'change credit card radio button': this.by.css('div[height="auto"]:nth-child(1) > div > div > div > div > div:nth-child(4)  label'),
      'invoice name field': this.by.css('input[name="person_name"]'),
      'invoice same as merchant mail checkbox': this.by.css('input[name="merchant_email"]'),
      'invoice contact address': this.by.css('input[name="address"]'),
    }
  }

}

module.exports = PlanCheckoutPage
