let Page = require('../../framework/models/Page.js')

class ChannelIntegrationLinePage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="ChannelLineController"]'),
      'section title': this.by.css('div.header.ng-binding'),
      'section box': this.by.css('div.header-box'),
      'order update notification toggle': this.by.css('toggle-button[on-change="toggleLineOrderMessaging()"] div[ng-click="toggle()"]'),
      'order update notification toggle on': this.by.css('toggle-button[on-change="toggleLineOrderMessaging()"] div[ng-click="toggle()"][aria-checked="true"]'),
      'connect button': this.by.css('a[ng-if="channels.length < 2"]'),
      'view button': this.by.css('a[ng-if="channels.length === 2 && featureService.hasAccessToSection(\'communication_channels\', \'create_update\')"]'),
      'alert': this.by.css('.alert'),
      'toggle on': this.by.css('div[ng-click="toggle()"][aria-checked="true"]'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/channels/line?locale=en`
  }

  get samples() {
    return {
    'connect line description content': 'Integrating LINE API to bring together online and offline consuming behaviours so as to effectively expand order sources as well as social marketing.',
    }
  }
}

module.exports = ChannelIntegrationLinePage