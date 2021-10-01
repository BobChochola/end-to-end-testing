let Page = require('../../framework/models/Page.js')

class BasicSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="merchantForm"] [name="merchants_phone_number"]'),
      'base mail field': this.by.css('input[name="shop_email"]'),
      'shop name field': this.by.css('input[name="merchants_name"]'),
      'advanced settings button': this.by.css('[ng-click="toggleAdvancedEmail()"]'),
      'message email field': this.by.css('input[name="message_email"]'),
      'phone number field': this.by.css('input[name="merchants_phone_number"]'),
      'basic info update button': this.by.css('form[name="merchantForm"] button[type="submit"]'),
      'base country dropdown': this.by.css('select[name="merchant_base_country_code"]'),
      'popover': this.by.css('.modal-content'),
      'confirm button': this.by.css('[type="submit"].ng-binding'),
      'shop status dropdown': this.by.css('select[name="merchant_shop_status"]'),
      'supported shop languages title': this.by.css('span[class="label label-primary supported-language-tag ng-binding ng-scope"]'),
      'Open': this.by.css('select[name="merchant_shop_status"] option[value="string:open"]'),
      'Closed': this.by.css('select[name="merchant_shop_status"] option[value="string:closed"]'),
      'Hong Kong': this.by.css('select[name="merchant_base_country_code"] option[value="string:HK"]'),
      'Taiwan': this.by.css('select[name="merchant_base_country_code"] option[value="string:TW"]'),
      'Malaysia': this.by.css('select[name="merchant_base_country_code"] option[value="string:MY"]'),
      'Thailand': this.by.css('select[name="merchant_base_country_code"] option[value="string:TH"]'),
      'language checkbox': this.by.css('input[ng-model="merchant.ignore_browser_lang"]'),
      'language dropdown': this.by.css('select[name="merchants_store_front_language_codes"]'),
      'shop custom language dropdown option': this.by.css('select[name="merchants_store_front_language_codes"] option'),
      'English': this.by.css('option[label="English"]'),
      'Zh': this.by.css('option[label="Traditional Chinese"]'),
      'View my shop button': this.by.css('a[ng-show*="mainConfig.merchantData.shop_status"]'),
      'lease two language error message': this.by.css('span[class*="error-language-label"]'),

      // Supported Shop Languages
      'supported shop language area': this.by.css('div[label="Supported Shop Languages"]'),
      'go to design page link': this.by.css('a[href="design?currentTab=advanced_settings"]'),
      'shop supported language dropdown': this.by.css('ul[class="chosen-choices"]'),
      'shop supported language dropdown option': this.by.css('div[class="chosen-drop"] li'),
      'chosen language': this.by.css('li[class="search-choice"]'),
      'selected language': this.by.css('span.supported-language-tag'),
      'selected language delete button': this.by.css('span[class*="language-remove-label"]'),
      'confirm delete button': this.by.css('.modal-content [ng-click="confirm()"]:not(.ng-hide)'),
    }

  }

  get samples() {

    return {
      'mail': this.props.sample.genNewEmail(),
      'notification mail': this.props.loginAccount.notificationEmail,
      'phone number': this.props.sample.genPhone(),
      'shop name': this.props.sample.genStoreName(),
      'real shop name': this.props.loginAccount.handle,
      'dirty shop name': `(dirty data)&&${this.props.sample.genStoreName()}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/edit?locale=en`

  }

}

module.exports = BasicSettingPage
