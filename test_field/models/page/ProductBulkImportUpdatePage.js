let Page = require('../../framework/models/Page.js')

class ProductBulkImportUpdatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('products-bulk-import-add [ng-click="openFile()"]'),
      'file upload selector': this.by.css('products-bulk-import-add  [ng-click="openFile()"] ~ input'),
      'export product bulk update file button': this.by.css('a[ng-click="exportProducts()"]'),
      'file revised selector': this.by.css('input[id="bulkupload-update"]'),
    }

  }



  get samples() {

    return {

      'product bulk upload file': `${this.props.sample.sampleFilesPath()}/my_upload.xls`,
      'one product bulk update file': `${this.props.sample.sampleFilesPath()}/testuser0109-BulkUpdateForm.xls`,
      'dynamic product bulk update files': `${this.props.sample.sampleFilesPath()}/testuser1174-dynamic-BulkUpdateForm.xls`,
      'member tier product bulk update files': `${this.props.sample.sampleFilesPath()}/testuser1175-membertier-BulkUpdateForm.xls`,
    }

  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/products/import/bulkupload_v2?locale=en`
  }



}

module.exports = ProductBulkImportUpdatePage
