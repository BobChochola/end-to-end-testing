let Page = require('../../framework/models/Page.js')

class StaffSettingAddPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="StaffNewController"]'),
      'email field': this.by.css('input[name="staff_email"]'),
      'add button': this.by.css('button[type="submit"]'),
      'cancel button': this.by.css('form[name="staffForm"] a[href*="/staff"]'),
    }

  }

  get samples() {

    return {
      'qa email': 'shoplineqa@gmail.com',
      'new email': this.props.sample.genNewEmail(),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/staff/new?locale=en`

  }

}

module.exports = StaffSettingAddPage
