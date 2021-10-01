let Page = require('../../framework/models/Page.js')

class MyAppsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[class="ng-view-wraper ng-scope trial-plan-info"]'),
      'app panel block': this.by.css('section[class="panel panel-default app-panel-block"]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'row of app list': this.by.css('tr[ng-repeat="merchant_app in merchantApps"]'),
      'uninstall button': this.by.css('a[class="btn btn-danger ng-binding"]'),
      'row of select checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'ok button': this.by.css('button[class="btn btn-danger ladda-button ng-binding"]'),
      'go to the apps store button': this.by.css('a[class="btn btn-primary ng-binding"]'),
      'app table': this.by.css('tbody'),
    }

  }

  get isAngular() { return false }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/apps/my_apps?locale=en`
  
  }
}

module.exports = MyAppsPage