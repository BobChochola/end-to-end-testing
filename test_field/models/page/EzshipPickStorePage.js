let Page = require('../../framework/models/Page.js')

class EzshipPickStorePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[id="thisPageMain"]'),
      'id search button': this.by.css('h4#ui-id-11'),
      'search button': this.by.css('div[aria-hidden="false"] button.ui-button'),
      'store info popover': this.by.css('div.ui-dialog'),
      'store id field': this.by.css('input[name="storeid"]'),
      'next step button': this.by.xpath('//*[@id="idThisBody"]/div[2]/div[3]/div/button[3]'),
    }

  }

  get isAngular() { return false }

  get samples() {
  
    return {
      'ezstore id': '12899'
    }

  }


}

module.exports = EzshipPickStorePage 
