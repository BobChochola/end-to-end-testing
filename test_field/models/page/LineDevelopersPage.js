let Page = require('../../framework/models/Page.js')

class LineDevelopersPage extends Page {

  get elements() {
    return {
      'id': this.by.css('body'),
      'title': this.by.css('h1 span[data-v-2ee782b0]'),
      'tab': this.by.css('a[data-v-8efffe6c][class="lySideLink"]'),
      'login button': this.by.css('.user-profile-area .navbar-login-button'),
      'use line login button': this.by.css('input[type="submit"]'),
      'email field': this.by.css('input[name="tid"]'),
      'password field': this.by.css('input[name="tpasswd"]'),
      //after login
      'provider list': this.by.css('.providers'),
      'row of provider list': this.by.css('.trow .dc-provider-name'),
      'create new provider button': this.by.css('.providers button'),
      'provider name field': this.by.css('.user-input'),
      'confirm button': this.by.css('.providers .field button'),
      'error botton': this.by.css('div[data-v-67cb7038][data-v-3965eec8] a[data-v-67cb7038]'),

      //create list (login/api/clova)
      'create list': this.by.css('.create-item'),
      'create messaging API button': this.by.css('[href*="messaging-api"]'),
      //provider channel list
      'create button': this.by.css('.channel-item.channel-item-create'),
      'create line login button': this.by.css('[href*="line-login"]'),
      'app type checkbox': this.by.css('[type="checkbox"]'),
      'channel list': this.by.css('.channel-item'),

      //create new api/login
      'app name field': this.by.css('[placeholder="Enter channel name"]'),
      'app description field': this.by.css('textarea[placeholder="Enter channel description"]'),
      'category dropdown': this.by.css('[data-content$="category"] select'),
      'category dropdown option': this.by.css('[data-content$="category"] select option'),
      'email address field': this.by.css('[placeholder="Enter your email address"]'),
      'alert': this.by.css('div.LDModal.LDModal-large'),
      'submit button': this.by.css('[type="submit"]'),
      'popup confirm button': this.by.css('.consent-modal .primary'),
      'agree checkbox': this.by.css('input[type="checkbox"]'),

      //channel setting
      'delete button': this.by.css('.kv-button.danger'),
      'popup delete button': this.by.css('.kv-modal .kv-button.danger'),
      'popup ok button': this.by.css('.kv-modal .kv-button.primary'),
      'channel id': this.by.css('p.readonly-text'),
      'secret': this.by.css('.action-field p'),
      'tab': this.by.css('nav li button'),
      'issue button': this.by.css('.kv-button.dark.sm'),
      'apply button': this.by.css('.openid-apply button'),
      'image selector': this.by.css('input[type="file"]'),
      'channel access token block': this.by.css('div[class="token-row"] span'),
      'edit button': this.by.css('.dc-operactions button'),
      'webhook URL field': this.by.css('textarea.user-input'),
      'update button': this.by.css('.kv-button.primary'),
      'verify button': this.by.css('.kv-button.dark.sm'),
      'success ok button': this.by.css('.kv-button.primary'),
      'webhook toggle': this.by.css('.kv-switch'),
      'breadcrumb link': this.by.css('.breadcrumb a'),
      'bot linked dropdown': this.by.css('.secondary select'),
      'bot linked dropdown option': this.by.css('.secondary select option'),
      'bot linked': this.by.css('[data-content].readonly'),
      'callback URL field': this.by.css('textarea[placeholder="https://app.example.com/callback"]'),

      'row of channel': this.by.css('.channel-item'),
      'popover': this.by.css('div[data-v-5b5c76b1] div[class="LDModal"]'),
      'enable and disable checkbox': this.by.css('span.md52RadioParts'),
      'set message link': this.by.css('a[data-v-13e899e3][data-link="external"]'),
      'email submit button': this.by.css('div.md91SettingBlock.md94OpenIdConnectBody button.Button.Button-middle.Button-dark.nowrap'),
      'status button': this.by.css('button.dc-channel-status'),
      'publish popover': this.by.css('.kv-modal'),
      'channel status': this.by.css('.dc-channel-status'),
      'back to channel list button': this.by.css('.breadcrumb .item'),

      'top button': this.by.css('.breadcrumb .router-link-active'),
      'provider side list': this.by.css('a.title[data-v-54cbe9b3]'),
      'more button':this.by.css('i[data-v-2ee782b0][data-v-5e85161c]'),
      'delete this channel button': this.by.css('li[data-v-2ee782b0][data-v-bf932c1e]'),
      'delete popover': this.by.css('div[data-v-093e83e3][class="LDModal"]'),
      'click to delete button': this.by.css('a[data-v-093e83e3][data-link="external"]'),
      'close x icon': this.by.css('i.global-icon[data-v-093e83e3]'),
      'provider more button': this.by.css('i[data-v-785ff175][data-v-5e85161c]'),
      'provider more option': this.by.css('li[data-v-785ff175][data-v-bf932c1e]'),
      'delete provider popover': this.by.css('div[data-v-5bbf5516][class="LDModal"]'),
    }
  }

  get url() {
    return `https://developers.line.biz/en/`
  }

  get samples() {
    return {
       'line email': 'testuser@shoplineapp.com',
       'qa line email': 'shoplinetesterg@gmail.com',
       'line password': 'testuser001',
       'line image': `${this.props.sample.sampleImagesPath()}/4.jpg`,
       'handle name': this.props.account.handle,
       'webhook URL': `https://${this.getVariable('webhook')}`,
       'line id': `${this.getVariable('line id value')}`.substring(1, `${this.getVariable('line id value')}`.lastIndexOf('/'))
    }
  }
}

module.exports = LineDevelopersPage