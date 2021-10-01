let Page = require('../../framework/models/Page.js')

class ActionLogsOrderInvoicePage extends Page {

  get elements() {

    return {
      'id': this.by.css('pre[style="word-wrap: break-word; white-space: pre-wrap;"]'),

    }
  }

  get url() {

    return `${this.props.apiURL}orders/${this.getVariable('order id')}/invoices/request_history`
  }
}

module.exports = ActionLogsOrderInvoicePage