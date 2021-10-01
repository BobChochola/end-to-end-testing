let Page = require('../../framework/models/Page.js')

class MultipleChannelInventoryPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-if="!state.productLoading"]'),
      'product table title': this.by.css('tr.title'),
      'edit button': this.by.css('span[ng-if="!state.editMode"]'),
      'row of product name': this.by.css('td[class="bulk-edit-box-unit word-break-wrap handheld-recenter product-title product-hover"]'),
      'row of product main SKU': this.by.css('tbody[ng-repeat="product in products track by product._id"] td:nth-of-type(3):not(.inner-second)'),
      'row of variations SKU': this.by.css('tbody[ng-repeat="product in products track by product._id"] td.inner-second:nth-of-type(3)'),
      'row of status': this.by.css('td[class="bulk-edit-box-unit handheld-row-header word-break-wrap product-hover"]'),
      'row of product total quantity': this.by.css('td[class="bulk-edit-box-unit handheld-row-header total-inventory-content product-hover"]'),
      'row of product variations quantity': this.by.css('td[class="inner-quantity handheld-row-header total-inventory-content product-hover"]'),
      'row of product SHOPLINE quantity': this.by.css('tr td:nth-child(7)'),
      'row of product Shopee quantity': this.by.css('tr td:nth-child(8)'),
      'edit total quantity field': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, null, value)"] input[type="number"]'),
      'decrease total quantity button': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, null, value)"] button[ng-click="decrease()"]'),
      'increase total quantity button': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, null, value)"] button[ng-click="increase()"]'),
      'edit variations quantity field': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, variation.key, value)"] input[type="number"]'),
      'decrease variations quantity button': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, variation.key, value)"] button[ng-click="decrease()"]'),
      'increase variations quantity button': this.by.css('td.edit-wrap:not(.unlimited) quantity-input[model-change="setInventoryEdit(product._id, variation.key, value)"] button[ng-click="increase()"]'),
      'save button': this.by.css('span[ng-click="savaEdit()"]'),
      'alert': this.by.css('.alert'),
      'alert close button': this.by.css('div[class="ui-pnotify-closer"]'),

    }

  }


  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/products/inventory/multichannel?locale=en`

  }



}

module.exports = MultipleChannelInventoryPage