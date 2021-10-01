let Page = require('../../framework/models/Page.js')

class SignUpSetupPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[page="OnboardPanel"] button'),
      'currency dropdown': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[2]/span/div[1]'),
      'Hong Kong dollar': this.by.xpath('/html/body/div[3]/div[2]/div/div/react-app/div/div[3]/div/div[2]/div/div[2]/span/div[2]/div[1]'),
      'New Taiwan dollar': this.by.xpath('/html/body/div[3]/div[2]/div/div/react-app/div/div[3]/div/div[2]/div/div[2]/span/div[2]/div[3]'),
      'country dropdown': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[4]/span/div[1]'),
      'country dropdown option': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[4]/span/div[2]/div'),
      'language dropdown': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[3]/span/div/div[1]/div'),
      'language dropdown option': this.by.css('body > div.container > div.right.content-page > div.body > div > react-app > div > div > div > div > div > div:nth-child(3) > span > div > div'),
      'store type dropdown': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[6]/span/div[1]'),
      'store type dropdown option': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[2]/div/div[6]/span/div[2]/div'),
      'create store button': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/react-app/div[1]/div[3]/div/div[3]/button'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/users/sign_up?locale=en`
  
  }

}

module.exports = SignUpSetupPage 
