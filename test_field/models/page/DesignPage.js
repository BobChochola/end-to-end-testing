let Page = require('../../framework/models/Page.js')

class DesignPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.design-template-block'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('ul[aria-labelledby="menu-languages"] li'),
      'popover': this.by.css('div[class="modal-dialog"]'),
      'confirm button': this.by.css('div[class="modal-dialog"] button[ng-click="save()"]'),
      'cancel button': this.by.css('div[class="modal-dialog"] button[ng-click="cancel()"]'),

      'logo image selector': this.by.css('input#logo'),
      'favicon image selector': this.by.css('input#favicon'),
      'logo and favicon tab': this.by.css('.nav-tabs-center ul > li:nth-of-type(2) a'),
      'advanced setting tab': this.by.css('.nav-tabs-center ul > li:nth-of-type(3) a'),
      'currency label': this.by.css('.checkbox label'),
      'submit button': this.by.css('.design-advanced-block button[type="submit"]:not(.ng-hide)'),
      'row of preference label': this.by.css('.checkbox label'),
      'submit button': this.by.css('.design-advanced-block button[type="submit"]:not(.ng-hide)'),
      'save button': this.by.css('[ng-if*="advanced_settings"] [ng-click="submitForm(\'save_as_draft\')"]'),
      'publish button': this.by.css('[ng-if*="advanced_settings"] button[ng-click="submitForm(\'publish\')"]:not(.ng-hide)'),
      'View my shop button': this.by.css('a[ng-show*="mainConfig.merchantData.shop_status"]'),
      'advanced setting preference': this.by.css('design-theme-settings:not(.ng-hide) div[ng-if="currentTab == \'advanced_settings\'"]'),
      'hide language checkbox': this.by.css('input[ng-model="settings.hide_language_selector"]'),
      'hide language label checked': this.by.css('.design-advanced-block input[ng-model="settings.hide_language_selector"].ng-touched'),
      'instant add to cart checkbox': this.by.css('.design-advanced-block input[name="settings_quick_cart"]'),
      'instant add to cart sub checkbox group': this.by.css('[ng-show="settings.enabled_quick_cart"]:not(.ng-hide)'),
      'buy it now checkbox': this.by.css('.design-advanced-block  [name="settings_buy_now_button"]'),
      'buy it now color setting panel': this.by.css('.design-advanced-block [ng-show="settings.buy_now_button.enabled"]'),
      'color setting field': this.by.css('.design-advanced-block [name="buy_now_button_color"]'),
      'color setting error message': this.by.css('.design-advanced-block [ng-show="!settingsForm.buy_now_button_color.$valid"]'),
      'current window checkbox': this.by.css('.design-advanced-block .radio:nth-child(1) [name="opens_in_new_tab"]'),
      'new window checkbox': this.by.css('.design-advanced-block .radio:nth-child(2) [name="opens_in_new_tab"]'),
      'sort by product sales volume checkbox': this.by.css('div[ng-if*="advanced_settings"] input[ng-model="settings.enabled_sort_by_sold"]'),
      'unchecked sort by product sales volume checkbox': this.by.css('div[ng-if*="advanced_settings"] input[ng-model="settings.enabled_sort_by_sold"].ng-untouched'),
      'allow customers to select currency checkbox': this.by.css('input[name="settings_multicurrency"]'),
      'checked checkbox': this.by.css('input.ng-touched'),
      'change currency label': this.by.css('input.ng-dirty'),
      'show promotion on product checkbox': this.by.css('input[ng-model*="show_promotions_on_product"]'),
      'preference checkbox': this.by.css('.checkbox label'),

      // hide language button
      'hide specific language button': this.by.css('div[ng-click="handleHideLanguageClick()"]'),
      'supported language': this.by.css('div[class="modal-dialog"] div[ng-repeat*="supportedLanguage"]'),
      'language checkbox': this.by.css('input[ng-click*="handleHideLanguageCheckboxClick"]'),
      'hidden language': this.by.css('span[ng-repeat*="hide_languages"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/design?locale=en`

  }

  get samples() {

    return {
      'logo image': `${this.props.sample.sampleImagesPath()}/2.png`,
      'favicon image': `${this.props.sample.sampleImagesPath()}/1.png`,
      'default logo image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'default favicon image': `${this.props.sample.sampleImagesPath()}/4.jpg`,
    }

  }

}

module.exports = DesignPage
