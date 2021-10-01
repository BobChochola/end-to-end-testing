let Page = require('../../framework/models/Page.js')

class ProductIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-show="products"]'),
      'product list': this.by.css('.products-list-table'),
      'row of product list': this.by.css('tr[ng-repeat="product in products"]'),
      'row of product name': this.by.css('td.bulk-edit-box-unit.word-break-wrap.ng-binding'),
      'row of regular price list': this.by.css('td[class="bulk-edit-box-unit"] strong:not([ng-hide="product.variations.length > 0 && !product.same_price"])[class="ng-binding"]'),
      'row of sale price list': this.by.css('.table.products-list-table td:nth-child(4)'),
      'row of quantity list': this.by.css('td[ng-click="printProduct()"]'),
      'row of product photo list': this.by.css('td img'),
      'row of edit button': this.by.css('.btn-group .product-action-button'),
      'row of publish button': this.by.css('button:not(.ng-hide)[ng-click*="publish(product"]'),
      'row of product checkbox': this.by.css('span:not(.hide) input[ng-checked="isChecked(product.id)"]'),
      'row of product available time icon': this.by.css('.fa-clock-o.product-status-icon'),
      'row of assigned categories': this.by.css('input[ng-model="cat.Selected"]'),
      'product operations dropdown': this.by.css('tr button.dropdown-toggle'),
      'product operations dropdown option': this.by.css('tr li a'),
      'select all button': this.by.css('input[ng-click="checkAll()"]'),
      'search type dropdown': this.by.css('a#menu-filter'),
      'bulk actions dropdown': this.by.css('button[id="menu-bulk"]'),
      'publish selected': this.by.css('li[ng-click*="bulkPublish"]'),
      'unpublish selected': this.by.css('li[ng-click*="bulkUnpublish"]'),
      'delete selected': this.by.css('li[ng-click="bulkDeleteRecord()"]'),
      'assign to categories': this.by.css('[role][ng-click*="category"]'),
      'categories checkbox': this.by.css('input[ng-change*="Categories"]'),
      'row of categories list': this.by.css('div[ng-repeat="cat in categoriesList"]'),
      'tagged with': this.by.linkText('Tagged with'),
      'alert': this.by.css('.alert'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'delete confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('.modal-dialog button.btn-danger:not([disabled])'),
      'confirm bulk button': this.by.css('div[class="dialogbox ng-scope"] button.btn-primary[ng-click="confirm()"]'),
      'search field': this.by.css('input[ng-model="searchInput"]'),
      'assign button': this.by.css('button[ng-click="assignCategories()"]'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'empty message': this.by.css('.empty-message:not(.ng-hide)'),
      'import actions dropdown': this.by.css('button#menu-import'),
      'bulk import selected': this.by.css('ul[aria-labbelledby="menu-import"] .bulk-edit-list:nth-of-type(1) a'),
      'filter dropdown': this.by.css('#menu-product-filter'),
      'filter dropdown option': this.by.css('.dropdown .bulk-edit-list a'),
      'add applicable payment option':this.by.css('li[ng-click="setShowPanel(\'payment\', \'include\')"]'),
      'add applicable delivery option':this.by.css('li[ng-click="setShowPanel(\'delivery\', \'include\')"]'),
      'exclude payment option': this.by.css('li[ng-click="setShowPanel(\'payment\', \'exclude\')"]'),
      'exclude delivery option': this.by.css('li[ng-click="setShowPanel(\'delivery\', \'exclude\')"]'),
      'row of option checkbox': this.by.css('div[class="option-list"] input[type="checkbox"]'),
      'row of option': this.by.css('.option-label'),
      'add button':this.by.css('button[ng-click="bulkBlacklistOptionPatch(\'include\')"]'),
      'exclude button':this.by.css('button[ng-click="bulkBlacklistOptionPatch(\'exclude\')"]'),
      'reminder': this.by.css('div[class*="alert-warning"]'),
      'close button': this.by.css(' .close-bulk-cat'),
      'publish loading icon': this.by.css('div[role="progressbar"]'),
      'publish status': this.by.css('i[ng-if="isPresetPublish"]'),
      // One
      'popup title': this.by.css('div[class="title ng-binding"]'),
      'popup panel': this.by.css('a[class="link-panel-btn"]'),
      'back to my products panel': this.by.css('div[class="back-btn ng-binding"]'),
    }

  }



  get samples() {

    return {
      'product photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'product detail photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'jpg image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'forty zh': '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十',
      'forty eng': 'abcdefghijabcdefghijabcdefghijabcdefghij',
      'today date': `${this.props.sample.genDate()}`,
      'tomorrow date': `${this.props.sample.genDate(1)}`,
      'available one day time': `Available Time: ${this.props.sample.genDate()} ${this.props.sample.genHour()}:00 - ${this.props.sample.genDate(2)} 00:00`,
      'available close time': `Unavailable Since: ${this.props.sample.genDate()} ${this.props.sample.genHour()}:00`,
      'available never expired time': `Available After: ${this.props.sample.genDate(2)} 00:00`
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/products?locale=en`

  }



}

module.exports = ProductIndexPage
