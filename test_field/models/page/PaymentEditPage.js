let Page = require('../../framework/models/Page.js')

class PaymentEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="paymentForm"] [name="payment_name"]'),
      'name field': this.by.css('input[name="payment_name"]'),
      'update button': this.by.css('button[type="submit"]'),
      'excluded delivery options': this.by.css('label[ng-class="{\'selected-strikethrough\':itemSelected(item)}"]'),
      'strikethrough': this.by.css('label.font-weight-normal.ng-binding.selected-strikethrough'),
      'cancel order toggle': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"]'),
      'cancel order toggle off': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"] div[aria-checked="false"]'),
      'cancel order toggle on': this.by.css('[model="payment.config_data.customer_cancel_order.enabled"] div[aria-checked="true"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/payments?locale=en`
  
  }

}

module.exports = PaymentEditPage 
