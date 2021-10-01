let Page = require('../../framework/models/Page.js')

class SignUpConfirmationPage extends Page {

  get elements() {
    return {
      'id': this.by.css("div[ng-controller='UsersWelcomeController']"),
    }
  }

  get samples() {
    return {}
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/sign_up_confirmation`
  }

}

module.exports = SignUpConfirmationPage
