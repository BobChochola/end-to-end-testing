let Page = require('../../framework/models/Page.js')

class AffiliateCampaignCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('.promotion-section.general_info.in.collapse'),
      'name field': this.by.css('input[name="campaignName"]'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'condition field': this.by.css('input[name="conditionValue"]'),
      'percent radio': this.by.css('input[value="percentage"]'),
      'percent value field': this.by.css('input[name="rewardValuePercentage"]'),
      'fixed amount radio': this.by.css('input[value="amount"]'),
      'fixed amount value field': this.by.css('input[name="rewardValueAmount"]'),
      'apply promotion radio': this.by.css('div.radio [ng-value="true"]'),
      'affiliate code field': this.by.css('input[name="affiliateCode"]'),
      'affiliate link': this.by.css('span.code'),
      'never expires checkbox': this.by.css('input[ng-change="onInfiniteEndAtChange()"]'),
      'affiliate link field': this.by.css('div.preview-link.ng-binding'),
      'preview button': this.by.css('a[ng-click="previewCampaign()"]'),
      'publish button': this.by.css('span[ng-show*="new"]'),

    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/affiliate_campaign/new?locale=en`

  }



}

module.exports = AffiliateCampaignCreatePage
