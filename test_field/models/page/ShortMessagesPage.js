let Page = require('../../framework/models/Page.js')

class ShortMessagesPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.box-content.table-responsive'),
      'export button': this.by.css('a.btn.btn-primary.ng-binding'),
      'confirmation popover': this.by.css('.dialogbox'),
      'confirm ok button': this.by.css('button.btn.btn-primary.ladda-button.ng-binding'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/reports/short_messages?locale=en`
  
  }

}

module.exports = ShortMessagesPage 