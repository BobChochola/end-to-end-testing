let Page = require('../../framework/models/Page.js')

class AddonEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="addonProductForm"] [ng-click^="deletePicture"]'),
      'english name field': this.by.css('input[name="addon_product_title_translations_en"]'),
      'addon photo selector': this.by.css('input[id="input-addon-media"]'),
      'valid date field': this.by.css('input[name="startOpened"]'),
      'invalid date field': this.by.css('input[name="endOpened"]'),
      'search product button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"] label'),
      'confirm button': this.by.css('button[ng-click="save()"]'),
      'addon price field': this.by.css('input[name="priceInput"]'),
      'SKU field': this.by.css('input[ng-model="addonProduct.sku"]'),
      'row of addon price': this.by.css('input[ng-model="product.addon_price"]'),
      'addon quantity field': this.by.css('input[name="addon_quantity"]'),
      'update button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('h4[class="ui-pnotify-title"]'),
      'unlimited checkbox': this.by.css('input[ng-model="addonProduct.unlimited_quantity"]'),
      'same addon price checkbox': this.by.css('input[ng-model="form.productPickerData.isSamePrice"]'),
      'tab': this.by.css('[ng-click="changeTab(tab)"]'),
      'delete photo button': this.by.css('[ng-click^="deletePicture"]'),
      'alt button': this.by.css('button[ng-click="addAlt(media)"]'),
      'alt field': this.by.css('input[ng-model="data.alt_translations[\'en\']"]'),
      'alt ok button': this.by.css('button[ng-click="confirm()"]'),
    }

  }

  get samples() {
 
    return {
      'date': `${this.props.sample.genDate()}`,
      'addon photo': `${this.props.sample.sampleImagesPath()}/1.png`,
    }
  
  }


}

module.exports = AddonEditPage 
