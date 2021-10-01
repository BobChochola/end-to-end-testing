let Page = require('../../framework/models/Page.js')

class UnauthorizedPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.box-info-401'),
      'unauthorized text': this.by.css('.box-info-401 .tabel-cell-block'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'side menu items': this.by.css('[data-e2e-id*="sidebar"]:not([data-e2e-id*="submenu"])'),
      'side submenu items': this.by.css('a[data-e2e-id*="submenu"]'),
    }

  }

  get samples() {
    return {
      'unauthorized access text': 'You are not authorized to access this page!',
    }
  }
}

module.exports = UnauthorizedPage