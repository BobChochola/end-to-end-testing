let Page = require('../../framework/models/Page.js')

class ChatbotExploreProductsNewPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="ChatbotAutoReplyNew"]'),
      'script name': this.by.css('span[data-e2e-id="script name"]'),

      //step area
      'step area': this.by.css('[data-e2e-id="step area"]'),
      'keyword field': this.by.css('[data-e2e-id="keyword field"] input'),
      'keyword tag': this.by.css('[data-e2e-id="keyword tag"]'),
      'row of steps': this.by.css('[data-e2e-id*="row of step"]'),

      //explore product
      'lock icon': this.by.css('[page="ChatbotAutoReplyNew"] > div > div > div:nth-child(2) > div:nth-child(2) > div [color="#7a8499"]'),
      'lock reminder': this.by.css('[page="ChatbotAutoReplyNew"] > div > div > div:nth-child(2) > div:nth-child(2) > div span[color="SNOW_100"]'),
      'explore products initial image': this.by.css('img[src*="chatbot_auto_reply/shopnow_initial"]'),
      'explore products category image': this.by.css('img[src*="chatbot_auto_reply/shopnow_category"]'),
      'explore products product image': this.by.css('img[src*="chatbot_auto_reply/shopnow_product"]'),

    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/chatbots/new?templateId=chatbot-scenario-shopnow?locale=en`

  }

}

module.exports = ChatbotExploreProductsNewPage
