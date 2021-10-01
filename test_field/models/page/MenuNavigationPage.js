let Page = require('../../framework/models/Page.js')

class MenuNavigationPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.ng-scope.angular-ui-tree'),
      'row of menu list': this.by.css('[ng-repeat="item in data.main"]'),
      'row of submenu list': this.by.css('[ng-repeat="subItem in item.children"]'),
      'submenu button of menu list': this.by.css('[ng-click="makeSublink(item)"]:not(.ng-hide)'),
      'parentmenu button of menu list': this.by.css('[ng-click^="makeParentLink"]'),
      'third layer button of menu list': this.by.css('[ng-click="makeSublink(subItem, item.children)"]:not(.ng-hide)'),
      'new feature alert': this.by.css('iframe[id="beamerNews"]'),
      'new feature alert close button': this.by.css('[onclick="BeamerEmbed.close();"]'),
      'add button': this.by.css('a.btn.btn-primary'),
      'delete button': this.by.css('.btn.btn-danger'),
      'try it button':this.by.css('a[class="btn btn-primary notification-btn ng-binding"]'),
      'confirm popover': this.by.css('div.dialogbox.ng-scope'),
      'delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'ok button': this.by.css('button[ng-show="showDestructive"]'),
      'navigation shop button': this.by.css('.navbar .navigation-panel a[href*="shopline"]'),
      'navigation menu button': this.by.css('.navigation-panel-hover-area'),
      'View my shop button': this.by.css('a[ng-show*="mainConfig.merchantData.shop_status"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/navigation?locale=en`

  }

}

module.exports = MenuNavigationPage
