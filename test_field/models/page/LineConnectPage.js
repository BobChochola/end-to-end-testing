let Page = require('../../framework/models/Page.js')

class LineConnectPage extends Page {

  get elements() {
    return {
      'id': this.by.css('form[name="lineConnectForm"]'),
      'LINE developers link': this.by.css('a[href="https://developers.line.biz/en/"]'),
      'api channel id field': this.by.css('input[ng-model="channel.message.channelId"]'),
      'api channel secret field': this.by.css('input[ng-model="channel.message.channelSecret"]'),
      'channel access token field': this.by.css('textarea[ng-model="channel.message.accessToken"]'),
      'webhook URL': this.by.css('input[ng-model="channel.webhook"]'),
      'login channel id field': this.by.css('input[ng-model="channel.login.channelId"]'),
      'login channel secret field': this.by.css('input[ng-model="channel.login.channelSecret"]'),
      'line id field': this.by.css('input[ng-model="channel.lineId"]'),
      'callback URL': this.by.css('textarea[ng-model="channel.callbackURL"]'),
      'connect button': this.by.css('button[type="submit"]:not([disabled="disabled"])'),
      'alert': this.by.css('.alert'),
      'delete button': this.by.css('button[ng-click="onDelete()"]'),
      'popover': this.by.css('div.modal-content'),
      'popup delete button': this.by.css('button[ng-show="showDestructive"][ng-click="confirm()"]'),
      'alert': this.by.css('.alert'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/channels/line/new?locale=en`
  }

  get samples() {
    return {
      'line id': `${this.getVariable('line id value')}`.split('@')[1].split('/')[0].replace('@',''),
    }
  }
}

module.exports = LineConnectPage