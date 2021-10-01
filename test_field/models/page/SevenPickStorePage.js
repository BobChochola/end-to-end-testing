let Page = require('../../framework/models/Page.js')

class SevenPickStorePage extends Page {

  get elements() {

    return {
      'id': this.by.css('#ECMAP'),
      'id search button': this.by.css('#byID'),
      'search button': this.by.css('#send'),
      'store confirm button': this.by.css('input#sevenDataBtn'),
      'store id field': this.by.css('input[id="storeIDKey"]'),
      'agree button': this.by.css('input#AcceptBtn'),
      'submit button': this.by.css('img#submit_butn'),
      'main frame': this.by.css('#frmMain'),
      'default': this.by.css('#mapMask'),
      'store list': this.by.css('#ol_stores li'),
    }

  }

  get isAngular() { return false }

  get samples() {

    return {
      'store id': '916527',

    }

  }


}

module.exports = SevenPickStorePage
