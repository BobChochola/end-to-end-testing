let Page = require('../../framework/models/Page.js')

class TrackingGoogleAnalyticsSettingsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="EventTrackersFormController"]'),
      'tracking code field': this.by.css("input[ng-model=\'event_tracker.config_data.tracking_code\']"),
      'submit button': this.by.css("button[type=\'submit\']"),
    }

  }

  get samples() {

    return {
      'google analytics url': 'https://analytics.google.com/analytics/web/',
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/event_trackers/new?event_type=google_analytics`

  }

}

module.exports = TrackingGoogleAnalyticsSettingsPage