let Page = require('../../framework/models/Page.js')

class CustomerListPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="UsersController"] .table-users'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'view button': this.by.css('a[ng-click="viewUser(user._id)"]'),
      'customer row': this.by.css('tr[ng-repeat="user in users"]'),
      'first customer row message button notification': this.by.css('tr[ng-repeat="user in users"]:first-child button i'),
      'first customer row message button': this.by.css('tr[ng-repeat="user in users"]:first-child button'),
      'search field': this.by.css('[ng-model^="searchParams.query"]'),
      'row of user name': this.by.css('td.userName'),
      'search button': this.by.css('[ng-click="search()"]'),
      'row of user email': this.by.css('td.userEmail'),
      'row of select checkbox': this.by.css('input[ng-model="user.selected"]'),
      'all row of select checkbox': this.by.css('input[ng-model="bulkToggleState"]'),
      'row of select checkbox list': this.by.css('tr[ng-repeat="user in users"]'),
      'row of user email': this.by.css('td.userEmail'),
      'select all button': this.by.css('[ng-click="queryAll(true)"]'),
      'clear all button': this.by.css('[ng-click="queryAll(false)"]'),

      'filter dropdown': this.by.css('.filter-label'),
      'filter type dropdown': this.by.css('[options="filters"] a.sb-toggle'),
      'filter type dropdown option': this.by.css('[options="filters"] li'),
      'filter condition dropdown': this.by.css('[options="vm.conditions"] a.sb-toggle'),
      'filter condition dropdown option': this.by.css('[options="vm.conditions"] li'),
      'filter value dropdown': this.by.css('[options="vm.values[vm.condition]"] a.sb-toggle'),
      'filter value dropdown option': this.by.css('[options="vm.values[vm.condition]"] li'),
      'filter value field': this.by.css('input[ng-model="vm.value"]'),
      'add filter button': this.by.css('[ng-click="vm.addFilter()"]'),

      'apply filter label': this.by.css('div[ng-show="vm.filters.length > 0"]'),
      'import report dropdown': this.by.css('a.btn.btn-default.btn-lg.ng-binding.dropdown-toggle'),
      'import report dropdown option': this.by.css('li.dropdown.open a[class$=ng-binding]'),
      'customer checkbox': this.by.css('input[ng-click="state.selectByQuery = false; toggleOne(user, user.selected);"]'),
      'bulk action dropdown': this.by.css('button[class="btn btn-default dropdown-toggle"]'),
      'delete selected': this.by.css('a[ng-click="bulkDelete()"]'),
      'change membership tier selected': this.by.css('a[ng-click="state.showTierDropdown = true"]'),
      'add credits selected': this.by.css('a[ng-click="bulkAssignUserCredit()"]'),
      'popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'ok button': this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'alert': this.by.css('.alert'),
      'row of customer order count': this.by.css('tr[ng-repeat="user in users"] td:nth-of-type(4) span:not(.small-window-only)'),
      'customer list info': this.by.css('.table'),
      'change tab button': this.by.css('li a[ng-click="changeSearchTab(tab)"]'),
      'no customers found': this.by.css('div[ng-show="users.length === 0"]'),
      'update attribute dropdown': this.by.css('select[ng-model="update_attributes.membership_tier_id"]'),
      'update attribute dropdown option': this.by.css('select[ng-model="update_attributes.membership_tier_id"] option'),

      'add credits popover': this.by.css('div.modal-content'),
      'amount of credit field': this.by.css('input[ng-model="userCredit.amount"]'),
      'reason field': this.by.css('textarea[ng-model="userCredit.reason"]'),
      'never expired checkbox': this.by.css('input[name="never_expires"]'),
      'add credits save button': this.by.css('div.modal-footer button[type="submit"]'),
      'send sms checkbox': this.by.css('input[name="send_user_import_sms"]'),

      'back to customer list button': this.by.css('div[ng-click="reloadPage()"]'),
      'next page button': this.by.css('a[ng-click="selectPage(page + 1, $event)"]'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/users?locale=en`
  }

  get samples() {

    return {
      'email': this.props.adminAccount.email,
      'phone': '0912345678',
      'account email': this.props.loginAccount.notificationEmail,
      'order result count': (parseInt(this.getVariable('order count')) - 1).toString(),

      'qa email': 'shoplineqa@gmail.com',
      'dateNow': this.props.sample.genDate().replace(/[^0-9]/g, '-'),
      'meridiemNow': this.props.sample.genTwelveHourPeriod(),

      'line email': 'testuser@shoplineapp.com',
      'qa line email': 'shoplinetesterg@gmail.com',
    }

  }
}

module.exports = CustomerListPage
