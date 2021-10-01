let Page = require('../../framework/models/Page.js')

class OneAddStaffSettingPage extends Page {

  get elements() {

    return {
      'id': this.by.css('input[name="email"]'),
      'email field': this.by.css('input[name="email"]'),
      'create button': this.by.xpath('//*[@id="root"]/div/div[3]/div[3]/div/button[2]'),

    }

  }

  get url() {

    return `${this.props.oneURL}/admin/${this.props.account.handle}/staff/create?locale=en`

  }

}

module.exports = OneAddStaffSettingPage
