let Page = require('../../framework/models/Page.js')

class PromotionSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="promotionSettingForm"]'),
      'promotion section': this.by.css('div.box-info.full'),
      'promotion reminder toggle': this.by.css('div[ng-model="settings.promotion.data.show_promotion_reminder"]'),
      'promotion reminder toggle off': this.by.css('div[ng-model="settings.promotion.data.show_promotion_reminder"] div.switch-off'),
      'show promotion campaign toggle': this.by.css('div[ng-model="settings.theme.data.show_promotions_on_product"]'),
      'show promotion campaign toggle off': this.by.css('div[ng-model="settings.theme.data.show_promotions_on_product"] div.switch-off'),
      'update button': this.by.css('button[ng-click="submitForm()"]'),
      'alert': this.by.css('.alert'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/discount/settings?locale=en`
  
  }

}

module.exports = PromotionSettingPage
