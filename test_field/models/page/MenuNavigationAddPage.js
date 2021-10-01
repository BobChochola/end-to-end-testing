let Page = require('../../framework/models/Page.js')

class MenuNavigationAddPage extends Page {

  get elements() {

    return {
      'id': this.by.css('[ng-controller="LinksFormController"]'),
      'menu item type dropdown': this.by.css('select[name="link_type"]'),
      'menu item type dropdown option': this.by.css('select[name="link_type"] option'),
      'page type dropdown': this.by.css('select[name="link_value_id"]'),
      'page type dropdown option': this.by.css("select[name=\'link_value_id\'] option"),
      'add button': this.by.css('.btn-primary'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/links/new?locale=en`

  }

}

module.exports = MenuNavigationAddPage
