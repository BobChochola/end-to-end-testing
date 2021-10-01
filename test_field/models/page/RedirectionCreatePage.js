let Page = require('../../framework/models/Page.js')

class RedirectionCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="linkRedirectionForm"]'),
      'old url field': this.by.css('input[ng-model="linkRedirection.original_uri"]'),
      'redirection field': this.by.css('input[ng-model="linkRedirection.redirect_uri"]'),
      'add button': this.by.css('button[type="submit"]'),
    }

  }

  get samples() {
  
    return {
      'redirection' : `https:\/\/${this.props.account.handle}.shoplineapp.com/?locale=en`,
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/domain_settings/redirections/new?locale=en`
  
  }

}

module.exports = RedirectionCreatePage
