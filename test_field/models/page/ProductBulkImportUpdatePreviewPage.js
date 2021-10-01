let Page = require('../../framework/models/Page.js')

class ProductBulkImportUpdatePreviewPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.box-info'),
      'row of product preview list': this.by.css('tr[ng-repeat="product in dataShown"]'),
      'import product button': this.by.css('button[ng-click="importBulkUpload()"]'),
      'confirm popover': this.by.css('.modal-dialog'),
      'ok button': this.by.css('button:not(.ng-hide)[ng-click="confirm()"]'),
      'upload finished info': this.by.css('[ng-show="loaders[\'process_products\']"]'),
      'go to products page link': this.by.css('a[href="products"]'),
      'go to import log link': this.by.css('a[href="jobs"]')
    }

  }

}

module.exports = ProductBulkImportUpdatePreviewPage 
