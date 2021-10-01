let Page = require('../../framework/models/Page.js')

class ProductSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="ProductsSettingsController"] [name="settingsForm"]'),
      'price range setting block': this.by.css('[comp="PriceRangeSetting"] > div > div'),
      'inventory reminder toggle': this.by.css('[model="orderSettings.data.stock_reminder_activation"] .btn-sl-toggle'),
      'inventory reminder toggle off': this.by.css('[model="orderSettings.data.stock_reminder_activation"] [aria-checked="false"]'),
      'out of stock reminder toggle': this.by.css('toggle-button[model="orderSettings.data.default_out_of_stock_reminder"] .btn-sl-toggle'),
      'out of stock reminder toggle off': this.by.css('toggle-button[model="orderSettings.data.default_out_of_stock_reminder"] [aria-checked="false"]'),
      'location id setting toggle': this.by.css('toggle-button[model="orderSettings.data.enabled_location_id"] .btn-sl-toggle'),
      'location id setting toggle off': this.by.css('toggle-button[model="orderSettings.data.enabled_location_id"] [aria-checked="false"]'),
      'sold out toggle': this.by.css('toggle-button[model="showSoldOut"] .btn-sl-toggle'),
      'sold out toggle off': this.by.css('toggle-button[model="showSoldOut"] [aria-checked="false"]'),
      'sold out toggle on': this.by.css('toggle-button[model="showSoldOut"] [aria-checked="true"]'),
      'turn on toggle': this.by.css('div[aria-checked="true"]'),
      'update button': this.by.css('.btn-primary'),
      'alert': this.by.css('.alert'),
      'setting items': this.by.css('div.SettingsItem-header'),
      'member price title': this.by.css('settings-item[model="productSettings.data.enabled_show_member_price"] .SettingsItem-header'),
      'member price en faq': this.by.css('a[href="https://support.shoplineapp.com/hc/en-us/articles/360018322151"]'),
      'member price zh faq': this.by.css('a[href="https://support.shoplineapp.com/hc/zh-tw/articles/360018322151"]'),
      'member price content': this.by.css('settings-item[model="productSettings.data.enabled_show_member_price"] .SettingsItem-body'),
      'member price content': this.by.css('settings-item[model="productSettings.data.enabled_show_member_price"] .SettingsItem-body'),
      'member price toggle': this.by.css('toggle-button[model="productSettings.data.enabled_show_member_price"] .btn-sl-toggle'),
      'member price toggle off': this.by.css('toggle-button[model="productSettings.data.enabled_show_member_price"] [aria-checked="false"]'),
      'member price toggle on': this.by.css('toggle-button[model="productSettings.data.enabled_show_member_price"] [aria-checked="true"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),
      'variation display dropdown radio': this.by.css('[value="dropdown"]'),
      'variation display label radio': this.by.css('[value="swatches"]'),
      'product review toggle': this.by.css('toggle-button[model="productSettings.data.enabled_product_review"] .btn-sl-toggle'),
      'product review toggle off': this.by.css('toggle-button[model="productSettings.data.enabled_product_review"] [aria-checked="false"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/products/settings?locale=en`

  }

}

module.exports = ProductSettingPage
