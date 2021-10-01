let Page = require('../../framework/models/Page.js')

class  CartAddOnItemsEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="addonPromotionForm"]'),
      'add on items price field': this.by.css('input[ng-model="extend_promotion.discounted_price"]'),
      'english name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'save button': this.by.css('button[type="submit"]'),

    }

  }

}

module.exports = CartAddOnItemsEditPage