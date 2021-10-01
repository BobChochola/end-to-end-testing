let Page = require('../../framework/models/Page.js')

class PlansCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[label="Cardholder Name"] input'),
      'cardholder name field': this.by.css('[label="Cardholder Name"] input'),
      'order terms checkbox': this.by.css('input[name="order_terms"]'),
      'confirm button': this.by.css('#plan_checkout_button'),
      'error alert': this.by.css('.alert-danger'),

      'credit frame': this.by.css('iframe[name="__privateStripeFrame5"]'),
      'date frame': this.by.css('iframe[name="__privateStripeFrame6"]'),
      'cvc frame': this.by.css('iframe[name="__privateStripeFrame7"]'),

      'credit card number field': this.by.css('input[name="cardnumber"]'),
      'expriry date field': this.by.css('input[name="exp-date"]'),
      'cvc field': this.by.css('input[name="cvc"]'),
      'coupon apply button': this.by.css('button[ng-submit="processCoupon()"]'),
    }
  }

  get samples() {

    return {
      'fake cardholder name': 'Fake Name',
      'fake credit card number': '5530224516776238',
      'fake expriry date': '11/25',
      'fake cvc': '123',
    }

  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/plans/basic/checkout?referral_action=Plans?locale=en`
  }
}

module.exports = PlansCheckoutPage
