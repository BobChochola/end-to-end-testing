let Page = require('../../framework/models/Page.js')

class AdminSignUpPage extends Page {

  get elements() {

    return {
      'id': this.by.css('#new_staff.new_staff'),
      'email field': this.by.css('input[id="staff_email"]'),
      'password field': this.by.css('input[id="staff_password"]'),
      'phone number field': this.by.css('input[placeholder="Mobile number"]'),
      'shop name field': this.by.css('input[name="merchant[name]"]'),
      'sign up button': this.by.css('button[type="submit"]')
    }

  }

  get samples() {

    return {
      'new account email': this.props.sample.genNewEmail(),
      'new account password': '12345678',
      'new phone number': '0912345678',
      'new shop name': this.props.sample.genStoreName()
    }

  }


  get url() {

    return `${this.props.baseURL}/users/sign_up?locale=en`

  }

}

module.exports = AdminSignUpPage
