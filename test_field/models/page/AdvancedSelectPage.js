let Page = require('../../framework/models/Page.js')

class AdvancedSelectPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PagesTemplatesController as page"]'),
      'template': this.by.css('.page-template')
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/pages/templates?locale=en`
  
  }

}

module.exports = AdvancedSelectPage

