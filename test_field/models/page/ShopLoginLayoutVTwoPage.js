let Page = require('../../framework/models/Page.js')

class ShopLoginLayoutVTwoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="userForm"]:not([ng-hide])'),
      'email field': this.by.css('div.tab-pane.active [name*="email"]'),
      'password field': this.by.css('div.tab-pane.active [name*="password"]'),
      'submit button': this.by.css('div.tab-pane.ng-scope.active>div>div.form-container>form>div.actions>button:not(.ng-hide)'),

      'switch sign up tab': this.by.css('a[class="nav-link ng-binding"]'),
      'signup email field': this.by.css('[ng-controller="RegistrationsNewController"] [type="email"]'),
      'signup password field': this.by.css('[ng-controller="RegistrationsNewController"] [type="password"]'),
      'signup name field': this.by.css('[ng-controller="RegistrationsNewController"] [name="name"]'),
      'signup submit button': this.by.css('[ng-controller="RegistrationsNewController"] button[ng-click="formSubmit()"]'),
      'agree terms checkbox': this.by.css('[ng-show^="featureService.hasFeature"] [type="checkbox"]'),
    }
  }  

  get samples() {

    return {
      'name': '陳小明',
      'email': this.props.adminAccount.email,
      'password': '1234567890',
      'fake email': 'aaaaaa@gmail.com',
      'new account email': `${this.props.sample.genNewEmail()}`,
      'new account password': this.props.loginAccount.password,
      'phone': '0987654321',
      'test phone': '0912345678',
      'facebook email': 'testuser@shoplineapp.com',
      'greenvines shop': `https://www.greenvines.com.tw/users/sign_in?locale=en`,
      'allyoung shop': `https://www.allyoung.com.tw/users/sign_in?locale=en`,
      'robinmaybag shop': `https://www.robinmaybag.com/users/sign_in?locale=en`,
      'lesenphants shop': `https://www.lesenphants.com.tw/users/sign_in?locale=en`,
      'theodorawatches shop': `https://www.theodorawatches.com/users/sign_in?locale=en`,
      'rococofashion shop': `https://www.rococofashion.com/users/sign_in?locale=en`,
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}/users/sign_in?locale=en`

  }

}

module.exports = ShopLoginLayoutVTwoPage