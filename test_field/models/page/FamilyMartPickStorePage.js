let Page = require('../../framework/models/Page.js')

class FamilyMartPickStorePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="aspnetForm"]'),
      'name search button': this.by.css('.menuButtonOff[onclick="openLightBox(2)"]'),
      'search button': this.by.css('#SearchType input[type="button"]'),
      'store name field': this.by.css('input#storename'),
      'row of search store list': this.by.css('tr[onclick^="goNext"]'),
      'confirm store button': this.by.css('.cityList:nth-of-type(1) a'),
      // freeze
      'store code search button': this.by.css('img[id="searchType2"]'),
      'freeze confirm store button': this.by.css('a[onclick="RedirectcheckStore()"]'),
    }

  }

  get isAngular() { return false }

  get samples() {
  
    return {
      'store name': '013024',

    }

  }


}

module.exports = FamilyMartPickStorePage 
