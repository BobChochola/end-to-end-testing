let Page = require('../../framework/models/Page.js')

class BundlePricingHistoryPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsHistoryController"]'),
      'bundle prmotion name': this.by.css('div[ng-controller="PromotionsHistoryController"] .box-header'),
      'row of bundle promotion': this.by.css('tr[ng-repeat="item in promotionItems"]'),
      'bundle promotion total': this.by.css('tr[ng-repeat="item in promotionItems"] td:nth-child(5)'),
      'bundle promotion discounted amount': this.by.css('tr[ng-repeat="item in promotionItems"] td:nth-child(6)'),
      'export promotions button': this.by.css('a[ng-click="exportPromotions()"]'),
      'confirm button': this.by.css('.modal-footer button[ng-click="confirm()"]:not(.ng-hide)'),
      'back to bundle pricing index button': this.by.css('.page-heading a[href$="bundle_pricing"]'),
    }

  }

  get samples() {

    return {
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/bundle_pricing?locale=en`

  }

}

module.exports = BundlePricingHistoryPage
