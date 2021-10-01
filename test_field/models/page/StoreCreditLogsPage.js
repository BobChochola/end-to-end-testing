let Page = require('../../framework/models/Page.js')

class StoreCreditLogsPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.the-timeline'),
      'row of credit log': this.by.css('li[ng-repeat="log in user_credit.logs"]'),

    }
  }
}

module.exports = StoreCreditLogsPage