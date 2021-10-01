let Page = require('../../framework/models/Page.js')

class AsiaPayCheckoutPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[background^="https://www.paydollar.com/"]'), 
      'error msg': this.by.css('.en_text')
    }
  }

}

module.exports = AsiaPayCheckoutPage

