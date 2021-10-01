let Page = require('../../framework/models/Page.js')

class AdminChangePasswordPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form.edit_staff'),
      'current password field': this.by.css('input[id="staff_current_password"]'),
      'password field': this.by.css('input[id="staff_password"]'),
      'password confirmation field': this.by.css('input[id="staff_password_confirmation"]'),
      'Update button': this.by.css('button[type="submit"]'),


    }

  }

  get samples() {
    return {
      'current password': this.props.loginAccount.password,
      'new password': this.props.loginAccount.password.split('').reverse().join(''),
    }
  
  }

  get url() {
  
    return `${this.props.baseURL}/users/edit?locale=en`
  
  }


}

module.exports = AdminChangePasswordPage 
