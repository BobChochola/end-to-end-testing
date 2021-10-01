let Page = require('../../framework/models/Page.js')

class StaffSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="StaffController"]'),
      'popover': this.by.css('div[class="modal-dialog"]'),
      'delete checkbox': this.by.css('div.recheckbox input'),
      'ok button': this.by.css('div.modal-dialog button[class*="btn-danger"]'),
      'add button': this.by.css('a[ng-click="addItemClicked()"]'),
      'edit button': this.by.css('a[ng-show="option._id!=currentUser._id"]'),
      'delete button': this.by.css('button[ng-click="deleteRecord(option)"]'),
      'store owner email': this.by.css('[class="col-sm-12"] div[class="box-info full"]:nth-child(2)'),

      'alert': this.by.css('div.dialogbox.ng-scope'),
      'alert checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'ok button': this.by.css('button[ng-show="showDestructive"]'),
      'staff': this.by.css('.table-responsive'),

      'staff of row': this.by.css('tr[ng-repeat="option in staff"]'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'My Profile': this.by.css('ul.dropdown-menu a[href$="users/profile"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'row of email': this.by.css('tr[ng-repeat="option in staff"] td:nth-child(2)'),
      'row of name': this.by.css('tr[ng-repeat="option in staff"] td:nth-child(1)'),
    }

  }

  get samples() {

    return {
      'email': this.props.adminAccount.email,
      'qa email': 'shoplineqa@gmail.com',
      'correct account email': this.props.loginAccount.email,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/staff?locale=en`

  }

}

module.exports = StaffSettingPage
