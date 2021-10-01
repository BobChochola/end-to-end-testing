let Page = require('../../framework/models/Page.js')

class MenuNavigationCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="LinksFormController"]'),
      'menu type list dropdown': this.by.css('select[ng-model="link.type"]'),
      'menu dropdown option': this.by.css('option[value*="string:"]'),
      'Page': this.by.css('option[value="string:page"]'),
      'page list dropdown': this.by.css('select[name="link_value_id"]'),
      'page dropdown option': this.by.css('option[ng-repeat="item in valueIds track by item._id"]'),
      'add button': this.by.css('button[type="submit"]'),
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/links/new?section=main?locale=en`
  
  }

}

module.exports = MenuNavigationCreatePage
