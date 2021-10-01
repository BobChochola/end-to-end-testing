let Page = require('../../framework/models/Page.js')

class AffiliateUsageRecordPage extends Page {

  get elements() {

    return {
      'id': this.by.css('a[ng-click="export()"]'),
      'row of order list': this.by.css('tr[ng-repeat="item in campaignOrders"]'),
      'row of reward earned list': this.by.css('td[ng-if="item.reward_type"]'),
    }

  }

  get samples() {
    return {
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    }
  }

}

module.exports = AffiliateUsageRecordPage
