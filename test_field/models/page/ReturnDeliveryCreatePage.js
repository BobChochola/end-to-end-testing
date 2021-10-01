let Page = require('../../framework/models/Page.js')

class ReturnDeliveryCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="deliveryOptionForm"]'),
      'delivery type dropdown': this.by.css('selectbox[value="form.deliveryType"]'),
      'delivery type dropdown option': this.by.css('selectbox[value="form.deliveryType"] li'),
      'name field': this.by.css('input[name="delivery_option_name"]'),
      'provider dropdown': this.by.css('[options="providers"] [ng-click="vm.toggle()"]'),

      'parent id field': this.by.css('input[name="delivery_option_parentid"]'),
      'shop id field': this.by.css('input[name="delivery_option_shopid"]'),
      'merchant name field': this.by.css('input[name="delivery_option_merchant_name"]'),

      'add button': this.by.css('form[name="deliveryOptionForm"] button[type="submit"] '),
      'confirm adding button': this.by.css('button:not(.ng-hide)[ng-click^="confirm"]'),
      'reminder': this.by.css('div.box-info.notification-box-primary.ng-scope'),
      }
  }
  get samples() {

    return {
      'the 711C2B Parent ID': '909',
      'the 711C2B Shop ID': 'z01',

      'the Merchant Name': '陳小明',
    }

  }
  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/return_delivery_options/new?locale=en`

  }

}


module.exports = ReturnDeliveryCreatePage