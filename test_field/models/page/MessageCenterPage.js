let Page = require('../../framework/models/Page.js')

class MessageCenterPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.inbox-message-container'),
      'search field': this.by.css('input[placeholder*="Email"]'),
      'messages status dropdown': this.by.css('div.ant-select'),
      'messages status dropdown option': this.by.css('div.ant-select-item'),
      'archived status button': this.by.css('.inbox-message-container > div > div > div > div > div:nth-child(2) > div[class*="archive-wrap"] > span'),
      'archived status button selected': this.by.css('.inbox-message-container > div > div > div > div > div:nth-child(2) > div:nth-child(2) > svg'),
      'row of message list': this.by.css('[class="conversation-list"] > div > div.conversation-item-right'),
      'row of customer name': this.by.css('.inbox-message-container > div > div > div > div:nth-child(2) > div > div > div:nth-child(1)'),
      'row of message': this.by.css('.inbox-message-container > div > div > div > div:nth-child(2) > div > div > div:nth-child(2)'),
      'tab': this.by.css('.ant-tabs-tab'),
      'time': this.by.css('.inbox-message-container > div > div > div > div:nth-child(2) > div > div [class*="date-label"]'),
      'unread message dot': this.by.css('.inbox-message-container [class*="ant-badge-dot"]'),
      'add star button': this.by.css('span.star-icon-wrap:nth-child(3)'),
      'add star button on': this.by.css('div.message-text > span:nth-child(2) > [class="star-icon-wrap false"]:nth-child(3)'),
      'archived button': this.by.css('span.star-icon-wrap:nth-child(2)'),
      'archived button on': this.by.css('div.message-text > span:nth-child(2) > [class="star-icon-wrap false"]:nth-child(2)'),
      'refresh button': this.by.css('.inbox-message-container > div:nth-child(2)'),

      //conversation area
      'message area': this.by.css('.chat-room-message-list-container'),
      'image content': this.by.css('.chat-room-message-list-container img'),
      'image content of gif': this.by.css('.chatroom-container img[src*="gif"]'),
      'image content of jpg': this.by.css('.chatroom-container img[src*="jpg"]'),
      'order link': this.by.css('div.inbox-message-container > div > div:nth-child(2) > div > div > div > div:nth-child(2)'),
      'latest message content': this.by.css('.chat-room-message-list-container > div:last-of-type > div:last-of-type'),
      'latest image content': this.by.css('.chat-room-message-list-container > div:last-of-type > div:last-of-type > div img'),
      'row of customer order message content': this.by.css('.chat-room-message-list-container > div > div:last-of-type > div > div'),
      'message field': this.by.css('[class*="chatroom"] textarea'),
      'send button': this.by.css('[class*="mc-input-bar"] button[class*="basic-button"]'),
      'image selector': this.by.css('input[type="file"]'),
      'delete image button': this.by.css('div[class*="close-icon-wrap"]'),
      
    }
  }

  get samples() {
  
    return {
      'email': this.props.adminAccount.email,
      'name': '陳小明',
      'new email name': `${this.getVariable('customer new email')}`.split('@')[0],
      'new email name only number': `${this.getVariable('customer new email')}`.split('@')[0].replace(/[^0-9]/g,''),
      'message': 'test for express checkout page message feature',
      'member email': 'testuser@shoplineapp.com',
      'message content': `Woah new store! Congrats!`,
      'admin message content': `Welcome to my shop`,
      'message photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'broadcast image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'special admin message content': '<test admin content>',
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'another new email name': `${this.getVariable('another customer new email')}`.split('@')[0],
      'notification email':'shoplineqa@gmail.com',
      'merchant random number': `${this.props.sample.genTwPhone()}`,
    }

  }
}

module.exports = MessageCenterPage
