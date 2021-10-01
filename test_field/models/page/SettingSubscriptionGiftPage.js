let Page = require('../../framework/models/Page.js')

class SettingSubscriptionGiftPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.table-responsive.table-promotions'),
      'add button': this.by.css('a.btn.btn-primary.ng-binding'),
      'promotion of promotion list': this.by.css('tr.ng-scope'),
      'row of delete button': this.by.css('a[ng-click="deleteSubscriptionsGift($index, promotion)"]'),
      'confirmation popover': this.by.css('div.dialogbox.ng-scope'),
      'delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'confirm delete button': this.by.css('button[ng-click="confirm()"]'),
      'edit button': this.by.css('a.btn.btn-default.btn-sm.ng-binding'),
      'loading icon': this.by.css('.padding-md:not(.ng-hide)'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/product_subscriptions/subscription_gift?locale=en`

  }

}

module.exports = SettingSubscriptionGiftPage
