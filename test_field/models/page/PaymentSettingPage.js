let Page = require('../../framework/models/Page.js')

class PaymentSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-controller="PaymentsController"] .row'),
      'table': this.by.css('div[class="box-info full"]'),
      'add button': this.by.css('[ng-show*="create_update"] .btn-primary'),
      'row of payment method list': this.by.css('tr[ng-repeat="option in payments"]'),
      'delete button of payment method list': this.by.css('button[ng-click="deleteRecord(option)"]'),
      'delete confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]'),
      'edit button of payment method list': this.by.css('tr[ng-repeat="option in payments"] [ng-disabled*="option.type === \'prizm\'"]'),
      'drag icon of payment method list': this.by.css('tr[ng-repeat="option in payments"] div[class="drag-handle"]'),
      'publish button of payment method list': this.by.css('td[style="text-align:right;"] a.ng-scope'),
      'delete checkbox': this.by.css('.recheckbox label'),
      // user menu
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/payments?locale=en`
  
  }

}

module.exports = PaymentSettingPage 
