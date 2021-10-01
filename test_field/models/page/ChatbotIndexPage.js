let Page = require('../../framework/models/Page.js')

class ChatbotIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="ChatbotAutoReplyList"]'),
      'add new script button': this.by.css('[data-e2e-id="add new script button"]'),
      'script table': this.by.css('table'),
      'row of script': this.by.css('[data-e2e-id="row of script"]'),
      'action dropdown': this.by.css('[data-e2e-id="action dropdown"]'),
      'action dropdown option': this.by.css('[data-e2e-id*="action dropdown option"]'),
      'popover': this.by.css('[data-e2e-id="popover"]'),
      'popover delete button': this.by.css('[data-e2e-id="popover delete button"]'),
      'script name field': this.by.css('input[placeholder="Enter new script name"]'),
      'popover rename button': this.by.css('[id="modal-root"] button:nth-child(2)'),

    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/chatbots?locale=en`

  }

}

module.exports = ChatbotIndexPage
