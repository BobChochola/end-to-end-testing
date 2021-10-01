let Page = require('../../framework/models/Page.js')

class CustomSignUpNotificationPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="CustomNotificationSectionEdit"]'),
      'language tab': this.by.css('react-app > div > div > div > div > div > div > div:nth-child(3) > div > div'),
      'header edit button': this.by.css('div:nth-child(4) > [height="auto"]:nth-child(1)'),
      'footer edit button': this.by.css('div:nth-child(7) > [height="auto"]:nth-child(1)'),
      'editor toolbar':this.by.css('.rdw-editor-toolbar'),
      'html text field': this.by.css('[role="textbox"]'),
      'header text count': this.by.css('react-app > div > div > div > div > div > div > div > div:nth-child(3) > div > div > div:nth-child(2)'),
      'footer text count': this.by.css('react-app > div > div > div > div > div > div > div > div:nth-child(6) > div > div > div:nth-child(2)'),
      'save reminder': this.by.css('body>div>div:nth-child(1)>div>div:nth-child(1)>div:nth-child(2)'),
      'reminder button': this.by.css('[height="LARGE"]'),
      'alert': this.by.css('react-app>div>div:nth-child(2)'),

      //html text element
      'bold button': this.by.css('[title="Bold"]'),
      'italic button': this.by.css('[title="Italic"]'),
      'underline button': this.by.css('[title="Underline"]'),
      'font size dropdown': this.by.css('[title="Font Size"] .rdw-dropdown-carettoopen'),
      'font size dropdown option': this.by.css('.rdw-fontsize-option'),
      'color button': this.by.css('[title="Color Picker"]'),
      'color tab': this.by.css('.rdw-colorpicker-modal-style-label'),
      'color option': this.by.css('.rdw-colorpicker-cube'),
      'link button': this.by.css('[title="Link"]'),
      'link block': this.by.css('.rdw-link-modal'),
      'link title':this.by.css('[id="linkTitle"]'),
      'link target':this.by.css('[id="linkTarget"]'),
      'open link in new window checkbox':this.by.css('[id="openLinkInNewWindow"]'),
      'link option button': this.by.css('.rdw-link-modal-btn'),
      'bold font': this.by.css('span[style*="font-weight: bold;"]'),
      'italic font': this.by.css('span[style*="font-style: italic;"]'),
      'underline font': this.by.css('span[style*="text-decoration: underline;"]'),
      'eighteen px size font': this.by.css('span[style*="font-size: 18px;"]'),
      'green color font': this.by.css('span[style*="color: rgb(97, 189, 109);"]'),
      'blue background color font': this.by.css('span[style*="background-color: rgb(71, 85, 119);"]'),
      'link text': this.by.css('.rdw-link-decorator-wrapper'),
      'message type tab': this.by.css('react-app > div > div > div:nth-child(1) > div > div:nth-child(1) > div'),
      //sms element
      'sms details': this.by.css('react-app>div>div>div:nth-child(2)>div'),
      'send sms toggle': this.by.css('react-app>div>div>div:nth-child(2)>div>div:nth-child(6)>div:nth-child(2)'),
      
    }

  }

  get samples() {

    return {
      'shop URL': `${this.props.sample.genShopURL(this.props.account.handle)}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/custom_notification/edit/USER_REGISTER?locale=en`

  }

}

module.exports = CustomSignUpNotificationPage