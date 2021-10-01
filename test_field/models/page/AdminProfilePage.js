let Page = require('../../framework/models/Page.js')

class AdminProfilePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form.edit_staff'),
      'error message': this.by.css('div[class*="alert-danger"]'),
      'whole page':this.by.css('div[class="container"]'),
      'email field': this.by.css('input[id="staff_email"]'),
      'language dropdown': this.by.css('div[class*="dropdown-language"] a'),
      'language dropdown option': this.by.css('div[class*="dropdown-language"] li'),

    }

  }

  get samples() {

    return {
      'correct account email': this.props.loginAccount.email,
    }

  }

}

module.exports = AdminProfilePage 
