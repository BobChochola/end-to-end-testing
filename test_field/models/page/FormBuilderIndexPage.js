let Page = require('../../framework/models/Page.js')

class FormBuilderIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#root h1'),
      'language dropdown': this.by.css('#root > div > div > div'),
      'language dropdown option': this.by.css('#root > div > div > div > div > div'),
      'error of empty form': this.by.css('#root > div > div > span > span'),
      'button': this.by.css('button'),
      'form of form lists': this.by.css('#root > div > div > div > div'),
      'edit button': this.by.css('#root > div > div > div > div > div > div > svg:nth-child(1)'),
      'delete button': this.by.css('#root > div > div > div > div > div > div > svg:nth-child(2)'),
      'create button': this.by.xpath('//*[@id="root"]/div[2]/div[1]/button'),
      'go to page button': this.by.css('#root > div > div > div > div > div > svg'),
      'popup': this.by.css('#root div:nth-child(4)'),
      'popup button': this.by.css('#root div:nth-child(4) button'),
      'popup field': this.by.css('#root input'),
      'create link': this.by.css('#root > div > div > span > span'),
    }

  }

  get url() {

    return `https://form-builder.shoplineapp.com/admin/${this.props.account.handle}?locale=en`

  }

}

module.exports = FormBuilderIndexPage
