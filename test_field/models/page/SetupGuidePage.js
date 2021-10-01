let Page = require('../../framework/models/Page.js')

class SetupGuidePage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="MerchantsEditController"]'),
      //headerBar
      'Language': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'English': this.by.xpath('/html/body/div[3]/navigation-bar/div/div[1]/div/div/div/ul[1]/li[1]/ul/li[1]'),
      'ZH': this.by.xpath('/html/body/div[3]/navigation-bar/div/div[1]/div/div/div/ul[1]/li[1]/ul/li[2]'),
      //user menu
      'User Menu': this.by.css('[id="menu-user"]'),
      'My Profile': this.by.css('ul.dropdown-menu a[href$="users/profile"]'),
      'Change Password': this.by.css('ul.dropdown-menu a[href$="users/edit"]'),
      'My Plan And Billing': this.by.css('ul.dropdown-menu a.plan'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      //side menu
      'side menu items': this.by.css('[data-e2e-id*="sidebar"]:not([data-e2e-id*="submenu"])'),
      'side submenu items': this.by.css('a[data-e2e-id*="submenu"]'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/setup_guide?locale=en`
  }

  get samples() {

    return {
      'admin staff setting add page': `${this.props.baseURL}/admin/${this.props.account.handle}/staff/new/?locale=en`,
    }

  }

}

module.exports = SetupGuidePage