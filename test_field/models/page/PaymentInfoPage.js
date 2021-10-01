let Page = require('../../framework/models/Page.js')

class PaymentInfoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="SLPaymentIntro"]'),
      'add payment button': this.by.css('[page="SLPaymentIntro"] button'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/payments/intro?locale=en`
  
  }

}

module.exports = PaymentInfoPage 
