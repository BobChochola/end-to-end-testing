let Page = require('../../framework/models/Page.js')

class CustomerSettingsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="settingForm"]'),
      'add button': this.by.css('a[ng-click="addItem()"]'),
      'Field Name field': this.by.css('input[ng-model="field.name_translations[currentEditLang]"]'),
      'Field Hint field': this.by.css('input[ng-model="field.hint_translations[currentEditLang]"]'),
      'update button': this.by.css('[ng-click="submitForm()"]'),
      'delete custom button': this.by.css('a.close'),
      'OK button': this.by.css('button[ng-show="showDestructive"]'),
      'limit counter': this.by.css('.limit-counter'),
      'checkout include': this.by.css('input[name^="checkout_include"]'),
      'user profile include checkbox': this.by.css('[ng-model="field.options.profile.include"]'),
      'birthday checkout include': this.by.css('input[name="checkout_include_1"]'),
      'birthday signup include': this.by.css('input[name="signup_include_1"]'),
      'birthday profile include': this.by.css('input[name="profile_include_1"]'),
      'verification email toggle': this.by.css('.email-verification-box toggle-button div'),
      'verification email toggle on': this.by.css('.email-verification-box toggle-button [aria-checked="true"]'),
      'verification email toggle off': this.by.css('.email-verification-box toggle-button [aria-checked="false"]'),
      'gender checkout include': this.by.css('div[ng-repeat="field in setting.general_fields"] input[name="checkout_include_0"]'),
      'gender signup include': this.by.css('div[ng-repeat="field in setting.general_fields"] input[name="signup_include_0"]'),
      'verification required before login toggle': this.by.css('toggle-button[model="setting.login_with_verification.status"] div.user-settings-toggle-btn'),
      'verification required before login toggle on': this.by.css('toggle-button[model="setting.login_with_verification.status"] [aria-checked="true"]'),
      'verification required before login toggle off': this.by.css('toggle-button[model="setting.login_with_verification.status"] [aria-checked="false"]'),
      'membership upgrade reminder toggle': this.by.css('toggle-button[model="setting.upgrade_reminder.status"] div[ng-click="toggle()"]'),
      'membership upgrade reminder toggle off': this.by.css('toggle-button[model="setting.upgrade_reminder.status"] [aria-checked="false"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'ZH': this.by.css('li[ng-class*="zh-hant"]'),
      'custom order tab': this.by.css('a[ng-click="changeEditLang(lang)"]'),
      'custom name error': this.by.css('div[class="help-block text-danger ng-binding ng-scope"]'),
      'fb app ID field': this.by.css('input[name="merchants_facebook_app_id"]'),
      'fb app secret tabel': this.by.css('div[label="Facebook App Secret"]'),
      'fb app secret field': this.by.css('input[name="merchants_facebook_app_secret"]'),
      'recaptcha toggle': this.by.css('toggle-button[model*="setting.recaptcha"] div'),
    }

  }

  get samples() {

    return {
      'name': 'test',
      'hint': 'hello world!',
      'Note': 'Changing the field name will lead to the incoherence of new field name and the existing data in report.',
      'Note ZH': '請注意：更改欄位名稱將導致報表原有資料與新欄位名稱不相符',
      'random code': `${this.getVariable('secret code')}`.substr(0, 32).replace(/[^A-Z,a-z,0-9]/g,'')
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/users/settings?locale=en`

  }

}

module.exports = CustomerSettingsPage
