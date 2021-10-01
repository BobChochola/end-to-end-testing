let Page = require('../../framework/models/Page.js')

class ChatbotEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="ChatbotAutoReplyEdit"]'),
      'script name': this.by.css('[data-e2e-id="script name"] span'),
      'script name field': this.by.css('[data-e2e-id="script name"] input'),
      'setting icon': this.by.css('[data-e2e-id="setting button"]'),
      'script delete button': this.by.css('[data-e2e-id="script delete button"]'),
      'script delete popover': this.by.css('[id="modal-root"] > div > div > div:nth-child(2)'),
      'script delete popover delete button': this.by.css('button[height="LARGE"]:nth-child(2)'),
      'back button': this.by.css('[data-e2e-id="back button"]'),
      'language dropdown': this.by.css('[data-e2e-id="language dropdown"]'),
      'language dropdown option': this.by.css('[data-e2e-id*="language dropdown option"]'),
      'chatbot breadcrumb': this.by.css('[data-e2e-id="chatbot breadcrumb"]'),
      'publish status': this.by.css('[data-e2e-id="publish status"]'),
      'publish button': this.by.css('[data-e2e-id="publish button"] button'),
      'alert': this.by.css('[data-e2e-id*="alert"]'),
      
      //step area
      'step area': this.by.css('[data-e2e-id="step area"]'),
      'connect script': this.by.css('[data-e2e-id="step area"] div:not([data-e2e-id="row of step 1"]) > [color="PRIMARY_600"]'),
      'keyword field': this.by.css('[data-e2e-id="keyword field"] input'),
      'keyword tag': this.by.css('[data-e2e-id="keyword tag"]'),
      'row of steps': this.by.css('[data-e2e-id*="row of step"]'),
      'row of attached steps': this.by.css('[data-e2e-id*="row of step"]:not([data-e2e-id="row of step 1"])'),
      'arrow of attached step': this.by.css('[data-e2e-id="arrow of attached step"]'),
      'link button': this.by.css('[data-e2e-id="link button"]'),
      
      //template
      'step name': this.by.css('[data-e2e-id="step name"]'),
      'add text template button': this.by.css('[data-e2e-id="add text button"]'),
      'add card template button': this.by.css('[data-e2e-id="add card button"]'),
      'add template reminder': this.by.css('div:not([data-e2e-id]) > div > [direction="TOP_CENTER"]:not([data-e2e-id="reminder"]) span[color="SNOW_100"]'),
      //text
      'text template': this.by.css('[data-e2e-id="text template"]'),
      'text field': this.by.css('[data-e2e-id="text field"] textarea'),
      'text template delete button': this.by.css('[data-e2e-id="text template delete button"]'),
      //button
      'add button': this.by.css('[data-e2e-id="add button"]:not([disabled])'),
      'popover': this.by.css('[data-e2e-id="popover"]'),
      'action button': this.by.css('[data-e2e-id*="action button"]'),
      'create new message button': this.by.css('[data-e2e-id="create new message button"]'),
      'message field': this.by.css('[data-e2e-id="message field"] input'),
      'done button': this.by.css('[data-e2e-id="done button"]'),
      'send message icon': this.by.css('[data-e2e-id="send message icon"]'),
      'website field': this.by.css('[data-e2e-id="website field"] input'),
      'select script button': this.by.css('[data-e2e-id*="select script button"]'),
      'arrow of button': this.by.css('[data-e2e-id="arrow of button"]'),
      'start another script icon': this.by.css('[data-e2e-id="start another script icon"]'),
      'delete button': this.by.css('[data-e2e-id="text template delete button"]'),
      'tooltip': this.by.css('button > div > div > [direction="TOP_CENTER"] > span[color="SNOW_100"]'),
      //card
      'card title field': this.by.css('[data-e2e-id="card title field"] textarea'),
      'card title text limit': this.by.css('[data-e2e-id="card title field"] label > span'),
      'card subtitle field': this.by.css('[data-e2e-id="card subtitle field"] textarea'),
      'card subtitle text limit': this.by.css('[data-e2e-id="card subtitle field"] label > span'),
      'card reminder icon': this.by.css('[data-e2e-id="reminder icon"]'),
      'card reminder': this.by.css('[data-e2e-id="reminder"] span'),
 
    }

  }

}

module.exports = ChatbotEditPage
