let Page = require('../../framework/models/Page.js')

class ChannelIntegrationFbPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="ChannelFbController"]'),
      'section title': this.by.css('div.header.ng-binding'),
      'fb connect description': this.by.css('.below-app-features-wrap'),
      'connected fb tab': this.by.css('[ng-click="onTabChange(tab)"]'),
      //Connect with Facebook@
      'facebook fan page connect button': this.by.css('[ng-click="connectFacebookPageToSLApp()"]'),
      'facebook fan page disconnect button': this.by.css('[ng-click="unlinkFacebookPage()"]'),
      'page connect button': this.by.css('button[ng-click="connectPage(page)"]'),
      'row of fb page': this.by.css('.modal-body [ng-repeat$="facebookPages"]'),
      'order update notification toggle': this.by.css('[on-change="toggleFbOrderStatusUpdates()"] [ng-click="toggle()"]'),
      'confirm button': this.by.css('button[ng-click="confirmPage()"]'),
      'fb message toggle': this.by.css('[model="orderSetting.data.facebook_messenging.status"]'),
      'connected fb tab': this.by.css('[ng-click="onTabChange(tab)"]'),
      'popover disconnect checklist label': this.by.css('.checklist-item'),
      'popover disconnect button': this.by.css('[ng-click="confirm()"]'),
      'popover': this.by.css('.modal-dialog'),
      'popover fb logout button': this.by.css('a[ng-click="logoutFacebook()"]'),
      'broascast link': this.by.css('p a[href*="broadcasts"]'),
      'go back button': this.by.css('button[ladda="isProcessing"]:not(.ng-hide)'),
      //Facebook Developer Account
      'facebook developer account connect button': this.by.css('[ng-click="clickConnect()"]'),
      
      'alert': this.by.css('.alert'),
    }
  }

  get samples() {
    return {
      'handle': `${this.props.account.handle}`,
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/channels/facebook?locale=en`
  }

}

module.exports = ChannelIntegrationFbPage