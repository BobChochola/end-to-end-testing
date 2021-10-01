let Page = require('../../framework/models/Page.js')

class TrackerSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="EventTrackersController"]'),
      'setting tracker event': this.by.css("a[ng-click=\'addItemClicked(option.code)\']"),
      'google analytics setting tracker event': this.by.css("a[ng-click=\'addItemClicked(option.code)\'] img[ng-src*=\'event_tracker_button_google_analytics.png\']"),
      'google analytics id': this.by.css("span[ng-show*=\'google_remarketing\']"),
      'delete button': this.by.css("button[ng-click=\'deleteRecord(option)\']"),
      'confirm delete': this.by.css("div.modal-dialog div[ng-show=\'recheckboxMessage\'] label"),
      'confirm delete button': this.by.css("button[ng-click=\'confirm()\']"),
      'navigation shop button': this.by.css('.navbar .navigation-panel a[href*="shopline"]'),
      'navigation menu button': this.by.css('.navigation-panel-hover-area'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/event_trackers?locale=en`

  }

}

module.exports = TrackerSettingPage