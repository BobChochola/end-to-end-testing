let Page = require('../../framework/models/Page.js')

class GoogleAnalyticsPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div#view_container'),
      'account field': this.by.css("input[type=\'email\']"),
      'identifierNext button': this.by.css("div#identifierNext"),
      'password field': this.by.css("input[type=\'password\']"),
      'passwordNext button': this.by.css("div#passwordNext"),
    }

  }

  get isAngular() { return false }

  get samples() {

    return {
      'account email': `${this.props.adminAccount.email}`,
      'account password': 'testuser',
    }

  }

  get url() {

    return 'https://analytics.google.com/analytics/web/'

  }



}

module.exports = GoogleAnalyticsPage
