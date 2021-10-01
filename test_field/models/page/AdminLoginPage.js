let Page = require('../../framework/models/Page.js')

class AdminLoginPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#new_staff.new_staff'),
      'email field': this.by.css('input[id="staff_email"]'),
      'password field': this.by.css('input[id="staff_password"]'),
      'login button': this.by.css('button[type="submit"]'),
      'error message box': this.by.css('.alert'),
      'register button': this.by.css('a[href="/users/sign_up"]'),
      'successful login': this.by.css('div.navbar-collapse.collapse'),
      'confirmation password field': this.by.css('input#staff_password_confirmation'),
      //random display element
      'no thanks button': this.by.css('#pushActionRefuse'),
      'intercom message': this.by.css('iframe[name*="intercom"][name!="intercom-launcher-badge-frame"][name!="intercom-launcher-frame"]'),
      'clear intercom message button': this.by.css('button'),
      'intercom message close button': this.by.css('[role="button"]'),
      'new feature alert': this.by.css('iframe[id="beamerNews"]'),
      'new feature alert close button': this.by.css('[onclick="BeamerEmbed.close();"]'),
      'exclude products panel close button': this.by.css('div.beamerAnnouncementBarClose'),
    }

  }

  get samples() {

    return {
      'correct account email': this.props.loginAccount.email,
      'correct account password': this.props.loginAccount.password,
      'new account password': this.props.loginAccount.password.split('').reverse().join(''),
      'wrong account password': '111111111',
      'correct admin email': this.props.adminAccount.email,
      'correct admin password': this.props.adminAccount.password,
      'qa email': 'shoplineqa@gmail.com',
      'qa password': '12345678',
      'inspector email': 'testuser+qe@shoplineapp.com',
      'inspector password': this.props.adminAccount.password,
    }

  }

  get url() {

    return `${this.props.baseURL}/users/sign_in?locale=en`

  }

}

module.exports = AdminLoginPage
