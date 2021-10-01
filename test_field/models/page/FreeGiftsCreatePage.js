let Page = require('../../framework/models/Page.js')

class FreeGiftsCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="giftForm"]'),
      'english name field': this.by.css('input[name="gift_title_translations_en"]'),
      'free gift photo selector': this.by.css('input#input-gift-media:not(.hidden)'),
      'unlimited checkbox': this.by.css('input#gift-quantity-unlimited'),
      'add button': this.by.css('button[type="submit"]'),
      'quantity field': this.by.css('input[name="gift_quantity"]'),
      'SKU field': this.by.css('input[ng-model="gift.sku"]'),
      'cost field': this.by.css('input[ng-model="gift.cost"]'),
      'weight field': this.by.css('input[name="weight"]'),
      'delete photo button': this.by.css('button[ng-click="deletePicture()"]'),
      'alt button': this.by.css('button[ng-click="addAlt(media)"]'),
      // One
      'select product as gift item checkbox': this.by.css('input[type="checkbox"]'),
      'existing product list': this.by.css('div[class="product-text-panel"]'),
      'select product popup': this.by.css('div[class="item-picker ng-scope"]'),
      'search field': this.by.css('input[ng-model="searchInput"]'),
      'checkbox of product list': this.by.css('input[class="item-check"]'),
      'confirm button': this.by.css('button[class="btn btn-primary ng-binding"]'),
      'change product button': this.by.css('div[class="btn btn-default change-product-btn ng-binding ng-scope"]'),
      'row of existing product': this.by.css('div[class="product-panel ng-scope"]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm reminder': this.by.css('div[class="modal-header ng-binding"]'),
      'confirm product list': this.by.css('div[class="modal-body"]'),
      'ok button': this.by.css('button[class="btn btn-primary ladda-button ng-binding"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/free_gifts/new?locale=en`

  }

  get samples() {
 
    return {
      'free gift photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'confirm reminder': 'Once add on item is created, selected product can not changed!',
    }
  
  }


}

module.exports = FreeGiftsCreatePage
