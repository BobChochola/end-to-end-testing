let Page = require('../../framework/models/Page.js')

class DomainSettingsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('merchant-shop-address'),
      'domain search result': this.by.css('div.domains-result-block'),
      'handle field': this.by.css('input[name="merchant_handle"]'),
      'update button': this.by.css('button[ng-click="submitHandleForm()"]'),
      // 'image form': this.by.css('form.ng-submitted[role="form"]'),
      'redirect tab': this.by.css('a[ng-click="changeSearchTab(tab)"]'),
      'add button': this.by.css('a[ng-href$="domain_settings/redirections/new"]'),
      'row of redirection': this.by.css('tr[ng-repeat="redirection in redirections"]'),
      'delete button': this.by.css('button[ng-click="deleteRedirection(redirection)"]'),
      'confirmation popover': this.by.css('div.dialogbox.ng-scope'),
      'delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'confirm delete button': this.by.css('button[ng-show="showDestructive"]'),
      'not found page dropdown': this.by.css('select[name="merchant_404_redirection"]'),
      'not found page dropdown option': this.by.css('select[name="merchant_404_redirection"] option'),
      'stay on 404 option': this.by.css('option[value*="boolean:false"]'),
      'redirect to home option': this.by.css('option[value*="boolean:true"]'),
      'update page button': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) button[ng-click="submitForm()"]'),
      'domain progress result':this.by.css('div.domain-progress-block'),
      'apply button':this.by.css('button[ng-click="showConfirmDomainWarning(option)"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'ZH': this.by.css('li[ng-class*="zh-hant"]'),
      'upgrage button': this.by.css('a.btn.btn-success.btn-upgrade.ng-binding'),
      'ok button': this.by.css('button.btn.btn-primary.ladda-button.ng-binding'),
    }

  }

  get samples() {

    return {
      'original handle': this.props.account.handle,
      'new handle': (function() { return `samplestore${Math.round(Math.random()*100)}` })(),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/domain_settings?locale=en`

  }

}

module.exports = DomainSettingsPage
