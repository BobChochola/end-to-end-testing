let Page = require('../../framework/models/Page.js')

class ShopMessagePage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="MessagesController"]'),
      'member center tab': this.by.css('.nav-tabs a'),
      'message field': this.by.css('textArea[id="message_text"]'),
      'send button': this.by.css('button[ng-click="submitMessageForm()"]'),
      'send button with recaptcha': this.by.css('button[id="submit-message-recaptcha"]'),
      'recaptcha popover': this.by.css('iframe[title="recaptcha challenge"]'),
      'image selector': this.by.css('input[ng-file-select="onFileSelect($files)"]'),
      'image content': this.by.css('a[ng-click*="onImageCliked"] img[src]'),
      'first message content': this.by.css('div[class="chat-message"]'),
      'sender message content': this.by.css('li[class="media ng-scope message-sender"]'),
      'recipient message content': this.by.css('li[class="media ng-scope message-recipient"]'),
      'last message content': this.by.css(':last-of-type > div > div.chat-message.ng-binding'),
      'second-last message content': this.by.css(':nth-last-of-type(2)> div > div.chat-message.ng-binding'),
      'latest sender message content': this.by.css('li.message-sender:last-of-type'),
      'latest recipient message content': this.by.css('li.message-recipient:last-of-type'),
      'row of chat list gif': this.by.css(".chat-list li a.cursor-pointer img[ng-src*=\'gif\']"),
      'row of chat list jpg': this.by.css(".chat-list li a.cursor-pointer img[ng-src*=\'jpg\']"),
      'add photo button': this.by.css('button[ladda="imageUploading"]'),
      'close recaptcha popup area': this.by.css('div[style*="top: 0px"]'),
      'delete button': this.by.css('[ng-click="deleteMedia()"]'),
    }
  }

  get samples() {
    return {
      'message content': `Woah new store! Congrats!`,
      'message photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'special shop message content': '<test shop content>',
      'message photo of jpg': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'message photo of gif': `${this.props.sample.sampleImagesPath()}/kittycry.gif`,
    }
  }

}

module.exports = ShopMessagePage