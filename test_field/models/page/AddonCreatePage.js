let Page = require('../../framework/models/Page.js')

class AddonCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="addonProductForm"]'),
      'tab': this.by.css('[ng-click="changeTab(tab)"]'),
      'breadcrumb': this.by.css('.page-heading h1 > span:not(.ng-hide):nth-child(5)'),
      'add button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('.alert'),

      //Add-on Item Info
      'english name field': this.by.css('input[name="addon_product_title_translations_en"]'),
      'addon photo selector': this.by.css('input[id="input-addon-media"]'),
      'SKU field': this.by.css('input[ng-model="addonProduct.sku"]'),
      'weight field': this.by.css('input[name="weight"]'),
      'addon quantity field': this.by.css('input[name="addon_quantity"]'),
      'unlimited checkbox': this.by.css('input[ng-model="addonProduct.unlimited_quantity"]'),
      'delete photo button': this.by.css('[ng-click^="deletePicture"]'),
      'alt button': this.by.css('button[ng-click="addAlt(media)"]'),
      'alt field': this.by.css('input[ng-model="data.alt_translations[\'en\']"]'),
      'alt ok button': this.by.css('button[ng-click="confirm()"]'),

      //Product Level Settings
      'valid date field': this.by.css('input[name="startOpened"]'),
      'invalid date field': this.by.css('input[name="endOpened"]'),
      'search field': this.by.css('input[ng-model="searchProductKeyword"]'),
      'search product button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.modal-content'),
      'same addon price checkbox': this.by.css('input[id="addon-price-same"]'),
      'select all button': this.by.css('label[ng-show="showSelectInPageButton"]'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"] label'),
      'product of popover list': this.by.css('div[class="modal-body"] div[class="thumbnail"]'),
      'confirm button': this.by.css('button[ng-click="save()"]'),
      'row of products': this.by.css('tr[ng-repeat="product in data.mainProducts"]'),
      'selected products': this.by.css('div[items="products"]'),
      'addon price field': this.by.css('input[name="priceInput"]'),
      'row of addon price field': this.by.css('input[ng-model="product.addon_price"]'),
      'search product by dropdown': this.by.css('.input-group [options="productFilterOptions"]'),
      'search product by dropdown option': this.by.css('.input-group [options="productFilterOptions"] a'),
      'categories list dropdown': this.by.css('.input-group-addon.btn-additional-filter'),
      'categories list dropdown option': this.by.css('.category-item label'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),

      // One
      'confirm popup': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm reminder': this.by.css('div[class="modal-header ng-binding"]'),
      'confirm product list': this.by.css('div[class="modal-body"]'),
      'ok button': this.by.css('.dialogbox button.btn:nth-child(2)'),
      'select existing product checkbox': this.by.css('input[type="checkbox"]'),
      'existing product search field': this.by.css('input[ng-model="searchInput"]'),
      'checkbox existing of product list': this.by.css('input[class="item-check"][type="checkbox"]'),
      'existing product ok button': this.by.css('button[class="btn btn-primary ng-binding"]'),
      'existing product panel': this.by.css('div[class="product-panel ng-scope"]'),
    }

  }

  get samples() {

    return {
      'date': `${this.props.sample.genDate()}`,
      'addon photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'confirm reminder': 'Once add on item is created, selected product can not changed!'
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/addon_items/new?locale=en`

  }



}

module.exports = AddonCreatePage
