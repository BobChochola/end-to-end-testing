let Page = require('../../framework/models/Page.js')

class ReportExportPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="MerchantsReportsController"]'),
      'sms report': this.by.css('a[href$="/reports/short_messages"]'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/reports?locale=en`
  
  }

}

module.exports = ReportExportPage 
