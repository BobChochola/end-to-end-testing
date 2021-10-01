let Page = require('../../framework/models/Page.js')

class ShopUserRemovedPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[style="text-align:left;margin:0 auto"]'),
      'remind message': this.by.css('div.modal-title'),
      'relogin button': this.by.css('[id="btn-form-submit"]'),
      'line login button': this.by.css('a[class="btn btn-block btn-line-login"] span.login-btn-label'),
    }
  }

  get url() {
    return `${this.props.sample.genShopURL(this.props.account.handle)}/users/removed?locale=en`
  }
}

module.exports = ShopUserRemovedPage