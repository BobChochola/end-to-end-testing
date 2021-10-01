let Page = require('../../framework/models/Page.js')

class ExpressCheckoutPagesPage extends Page {

  get elements() {
    return {
      'id': this.by.css('ul[ng-model="currentPage"]'),
      'row of page list': this.by.css('tr[ng-repeat="page in pages"]'),
      'create button': this.by.css('button[ng-click="addItemClicked()"]'),
      'popup': this.by.css('.modal-dialog'),
      'ok button': this.by.css('.modal-footer .btn-danger'),
      'delete button': this.by.css('button[ng-click="delete(page)"]'),
      'popup': this.by.css('div[class="modal-dialog"]'),
      'edit button': this.by.css('button[ng-click="edit(page)"]'),
      'publish button': this.by.css('button[ng-click="changePublishStatus(page)"][ng-if*="unpublished"]'),
      'unpublish button': this.by.css('button[ng-click="changePublishStatus(page)"][ng-if*="active"]'),
      'page title': this.by.css('tr[ng-repeat="page in pages"] span[ng-hide="page.key"]'),
      'delete confirmation popup': this.by.css('div[class="modal-dialog"]'),
      'popup ok button': this.by.css('div[class="modal-footer"] button[ng-click="confirm()"]:not(.ng-hide)'),
      'view page button': this.by.css('tr[ng-repeat="page in pages"] a i'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'reconfirm checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      //mobile
      'popover': this.by.css('div.dialogbox.ng-scope'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/express_checkout_pages?locale=en`
  }
}

module.exports = ExpressCheckoutPagesPage
