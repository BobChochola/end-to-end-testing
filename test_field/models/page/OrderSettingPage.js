let Page = require('../../framework/models/Page.js')

class OrderSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="OrdersSettingsController"] [name="settingsForm"]'),
      'setting form': this.by.css('form[name="settingsForm"]'),
      'invoice toggle': this.by.css('toggle-button[model="orderSetting.data.invoice_activation"] [ng-click="toggle()"]'),
      'invoice toggle off': this.by.css('sl-orders-settings-invoice[order-setting="orderSettings"] div[aria-checked="false"]'),
      'invoice toggle on': this.by.css('sl-orders-settings-invoice[order-setting="orderSettings"] div[aria-checked="true"]'),
      'taxable checkbox': this.by.css('label.invoice_tax_type_label input[value="1"]'),
      'tax free checkbox': this.by.css('label.invoice_tax_type_label input[value="3"]'),
      'shop tax type faq': this.by.css('label[for="invoice_tax_type"] a'),
      'Nat No field': this.by.css('sl-orders-settings-invoice[order-setting="orderSettings"] input[name="invoice_tax_id"]'),
      'Donation Recipient dropdown': this.by.css('select[name="invoice_donate_target"]'),
      'selected Donation Recipient': this.by.css('select[name="invoice_donate_target"] option[selected]'),
      'Donation Recipient': this.by.css('option[value="172"]'),
      'Donation Recipient option': this.by.css('select[name="invoice_donate_target"] option'),
      'Oversea tax type dropdown': this.by.css('select[name="oversea_tax_type"]'),
      'Oversea tax type option': this.by.css('select[name="oversea_tax_type"] option'),
      'spilt order toggle': this.by.css('[model="orderSetting.data.enable_order_split_einvoice_reissue"] div[ng-click="toggle()"]'),
      'spilt order toggle on': this.by.css('[model="orderSetting.data.enable_order_split_einvoice_reissue"] div[aria-checked="true"]'),
      'spilt order toggle off': this.by.css('[model="orderSetting.data.enable_order_split_einvoice_reissue"] div[aria-checked="false"]'),
      'auto cancel toggle': this.by.css('[model="orderSettings.data.auto_cancel_expired_orders"] div '),
      'auto cancel toggle on': this.by.css('[model="orderSettings.data.auto_cancel_expired_orders"] div[aria-checked="true"]'),
      'auto cancel toggle off': this.by.css('[model="orderSettings.data.auto_cancel_expired_orders"] div[aria-checked="false"]'),
      'auto cancel manually revert checkbox': this.by.css('[ng-model="orderSettings.data.auto_revert_credit"]'),
      'SMS toggle': this.by.css('[model="orderSetting.data.status_update_sms.status"] [ng-click="toggle()"]'),
      'turn on toggle': this.by.css('div[aria-checked="true"]'),
      'SMS usage table': this.by.css('div.panel.panel-default'),
      'add field button': this.by.css('a[ng-click="addField()"]'),
      'Custom Field dropdown': this.by.css('select[ng-model="field.type"]'),
      'Note': this.by.css('option[value="string:textarea"]'),
      'custome name field': this.by.css('input[ng-model="field.name_translations[currentEditLang]"]'),
      'custom name error': this.by.css('div[class="help-block text-danger ng-binding ng-scope"]'),
      'custome hint field': this.by.css('input[ng-model="field.hint_translations[currentEditLang]"]'),
      'display note field': this.by.css('textarea[ng-model="field.name_translations[currentEditLang]"]'),
      'update button': this.by.css('button[type="submit"]'),
      'delete field button': this.by.css('[ng-click^="removeField"]'),
      'real time usage report': this.by.css('div[class="col-md-12"]'),
      'limit counter': this.by.css('.limit-counter'),
      'tax type dropdown': this.by.css('[name="oversea_tax_type"]'),
      'tax type dropdown option': this.by.css('[name="oversea_tax_type"] option'),
      'website code field': this.by.css('[name="website_codes"]'),
      'api password field': this.by.css('[name="api_password"]'),
      'fb message toggle': this.by.css('[model="orderSetting.data.facebook_messenging.status"]'),
      'fb message toggle on': this.by.css('toggle-button[model="orderSetting.data.facebook_messenging.status"] div[class$="switch-on"]'),
      'fb message toggle off': this.by.css('toggle-button[model="orderSetting.data.facebook_messenging.status"] div[class$="switch-off"]'),
      'fb login button': this.by.css('label[id="loginbutton"]'),
      'fb logout button': this.by.css('a[ng-click="logoutFacebook()"]'),
      'hide information of order invoice toggle on': this.by.css('[model*="private_info_handle.enabled"] [aria-checked="true"]'),
      'hide information of order invoice toggle off': this.by.css('[model*="private_info_handle.enabled"] [aria-checked="false"]'),
      'hide information of order invoice custom checkbox': this.by.css('input[ng-model*="private_info_handle.custom_fields_enabled"]'),

      'cancel order info': this.by.css('div.box-info.full.customer-cancel-order'),
      'cancel order toggle': this.by.css('[model="orderSettings.data.customer_cancel_order.enabled"] div '),
      'cancel order toggle off': this.by.css('toggle-button[model="orderSettings.data.customer_cancel_order.enabled"] div[aria-checked="false"]'),
      'cancel order toggle on': this.by.css('toggle-button[model="orderSettings.data.customer_cancel_order.enabled"] div[aria-checked="true"]'),
      'auto cancel order checkbox': this.by.css('input[ng-model="orderSettings.data.customer_cancel_order.auto_revert_credit"]'),
      'payment hyperlink': this.by.css('div.box-body [href$="/payments"]'),
      'without auto revert credit list': this.by.css('div:nth-child(4) > div.box-body > div > label:nth-child(2)'),
      'auto revert credit list': this.by.css('div.box-info.full.customer-cancel-order.ng-scope > div.box-body > div > label:nth-child(3)'),

      'confirm button': this.by.css('button[ng-click="confirmPage()"]'),
      'popover': this.by.css('.dialogbox.ng-scope'),
      'popover ok button':this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'page connect button': this.by.css('button[ng-click="connectPage(page)"]'),
      'row of fb page': this.by.css('.modal-body [ng-repeat$="facebookPages"]'),
      'first connect button': this.by.css('.modal-body > div:nth-child(2) button'),
      'connected fb link': this.by.css('sl-orders-settings-fb-notify a'),
      'alert': this.by.css('.alert'),
      'error message': this.by.css('p[ng-bind-html="errorMessage"]:not(.ng-hide)'),

      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'custom order tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'message quantity': this.by.css('span.pull-right.ng-binding'),

      // storefront return 
      'storefront return toggle': this.by.css('toggle-button[ng-click="clickCustomerReturnToggle()"] div[ng-click="toggle()"]'),
      'storefront return toggle on': this.by.css('toggle-button[ng-click="clickCustomerReturnToggle()"] div[ng-click="toggle()"][aria-checked="true"]'),
      'storefront return toggle off': this.by.css('toggle-button[ng-click="clickCustomerReturnToggle()"] div[ng-click="toggle()"][aria-checked="false"]'),
      'return order limit day field': this.by.css('input[ng-model*="customer_return_order.available_return_days"]'),
      'setting delivery link': this.by.css('p[ng-bind-html*="customer_return_order.description"] a[href*="return_delivery_options"]'),
      'popover setting delivery link': this.by.css('div[class="modal-dialog"] a[href*="return_delivery_options"]'),

    }

  }

  get samples() {

    return {
      'Nat No': '24973192',
      'name': 'Test',
      'hint': 'happy_shopper123',
      'display note': 'This is testing msg.',
      'facebook email': 'testuser@shoplineapp.com',
      'Note': 'Changing the field name will lead to the incoherence of new field name and the existing data in report.',
      'Note ZH': '請注意：更改欄位名稱將導致報表原有資料與新欄位名稱不相符',
      'new quantity': (parseInt(`${this.getVariable('old quantity')}`.split(' ')[0].replace(/[^0-9]/g,''))+1).toString() ,
      'custom note with css': '<div><span class="wording" style="serif;  font-size: xx-large; color: rgb(240, 12, 183); text-decoration-line: underline; font-style: italic; font-weight: bold;">shoplineqe</span></div><div><img class="image" src="https://upload.cc/i1/2019/10/23/C1SzvB.png"></img></div>',
      'handle': `${this.props.account.handle}`,
    }

  }



  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/orders/settings?locale=en`

  }

}

module.exports = OrderSettingPage
