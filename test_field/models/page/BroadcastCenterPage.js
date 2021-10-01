let Page = require('../../framework/models/Page.js')

class BroadcastCenterPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[items="broadcasts"]'),
      'new message dropdown': this.by.css('a.btn.btn-primary.btn-lg.ng-binding.dropdown-toggle'),
      'new message dropdown option': this.by.css('li[ng-repeat="addOption in addOptions"]'),
      'alert': this.by.css('.alert'),
      'broadcast list': this.by.css('tbody tr'),
      'export usage record button': this.by.css('a.btn[href$="/reports"]'),
      'message status': this.by.css('span[ng-show="broadcast.status != null"]'),
      'number sent': this.by.css('tr[ng-repeat="broadcast in broadcasts"] span[ng-show="broadcast.messageCount != null"]'),
      'view button': this.by.css('tr[ng-repeat="broadcast in broadcasts"] a'),
      'cancel button': this.by.css('button[ng-click="cancelBroadcast(broadcast)"]'),
      'edit button': this.by.css('a[ng-if="broadcast.status == \'pending\' && broadcast.scheduledTask"]'),
      'delete button': this.by.css('button[ng-click="deleteBroadcast(broadcast)"]'),
      'block message': this.by.css('h4[ng-bind-html*="errors.401.text"]'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'broadcast info': this.by.css('div[class="box-info"]'),
      'broadcast table': this.by.css('thead tr'),

      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'ZH': this.by.css('li[ng-class*="zh-hant"]'),
      'date sent': this.by.css('tr[ng-repeat="broadcast in broadcasts"] span[ng-show="broadcast.executedAt"]'),
      'message title': this.by.css('tr[ng-repeat="broadcast in broadcasts"] td.word-break-wrap'),
      'message channel': this.by.css('tr[ng-repeat="broadcast in broadcasts"] td[class|=ng-binding]'),
      'popover': this.by.css('div[class="modal-content"]'),
      'popover checkbox': this.by.css('input[type="checkbox"]'),
      'ok button': this.by.css('button[class="btn btn-danger ladda-button ng-binding"]'),
   }

  }

  get samples() {
    return {
      'date': `${ this.props.sample.genDate().replace(/[^0-9]/g, '-')}`
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/broadcasts?locale=en`

  }
}

module.exports = BroadcastCenterPage