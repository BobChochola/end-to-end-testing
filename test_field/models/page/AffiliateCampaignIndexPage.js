let Page = require('../../framework/models/Page.js')

class AffiliateCampaignIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[items="campaigns"]'),
      'affiliate campaign table': this.by.css('table.table.table-hover.table-narrow-title.table-narrow-content'),
      'row of affiliate campaign': this.by.css('tr[ng-repeat="campaign in campaigns"]'),
      'row of affiliate campaign checkbox': this.by.css('input[ng-model="bulk.selectedMap[campaign._id]"]'),
      'usage record button': this.by.css('a[ng-click*="history"]'),
      'bulk action dropdown': this.by.css('th.campaign-action-column.form-products-picker-bulk-actions.text-right [ng-show*=".isBulkActionLoading"]:not(.ng-hide)'),
      'bulk action dropdown option': this.by.css('span[ng-show*=".isBulkActionLoading"] li'),

      'popover': this.by.css('div.dialogbox'),
      'delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'delete ok button': this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'alert': this.by.css('div.alert'),
   
    }

  }

  get samples() {
    return {
      'wrong affiliate campaign link': `${this.props.sample.genShopURL(this.props.account.handle)}?sl-ref=shoplineqa`,
    }
  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/affiliate_campaign?locale=en`

  }



}

module.exports = AffiliateCampaignIndexPage
