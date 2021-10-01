let Page = require('../../framework/models/Page.js')

class SevenPrintShipmentPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div.payment_top.gradient'),
    }
  }

  get samples() {
    return {}
  }

  get url() {
    return `https://epayment.7-11.com.tw/C2C/C2CWeb/C2C.aspx`
  }

}

module.exports = SevenPrintShipmentPage 
