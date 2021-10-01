let Page = require('../../framework/models/Page.js')

class CheckoutSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="CheckoutSettingsController"] [name="settingsForm"]'),
      'checkout without email toggle': this.by.css('[model="checkoutSettings.checkout_without_email"] div '),
      'checkout without email toggle off': this.by.css('[model="checkoutSettings.checkout_without_email"] div[aria-checked="false"]'),
      'modify cart quantity toggle': this.by.css('[model="checkoutSettings.enable_fast_checkout_qty"] div '),
      'modify cart quantity toggle off': this.by.css('[model="checkoutSettings.enable_fast_checkout_qty"] div[aria-checked="false"]'),
      'send abandoned cart email toggle': this.by.css('toggle-button[model="checkoutSettings.enabled_abandoned_cart_notification"] [ng-click="toggle()"]'),
      'full name toggle': this.by.css('[model="checkoutSettings.checkout_without_customer_name"] div'),
      'full name toggle off': this.by.css('[model="checkoutSettings.checkout_without_customer_name"] div[aria-checked="false"]'),
      'update button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('.alert'),
    }

  }


  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/checkout_settings?locale=en`

  }

}

module.exports = CheckoutSettingPage
