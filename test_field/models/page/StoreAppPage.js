let Page = require('../../framework/models/Page.js')

class StoreAppPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[class="col-sm-12"]'),
      'app panel block': this.by.css('section[class="panel panel-default app-panel-block"]'),
      'confirm popup': this.by.css('div[class="modal-header"]'),
      'install button': this.by.css('button[class="btn btn-primary app-btn ng-binding ng-scope"]'),
      'alert': this.by.css('div[class="modal-content"]'),
      'close cart panel area': this.by.css('div[class="body content rows scroll-y"]'),
      'go to the apps store button': this.by.css('a[class="btn btn-primary app-btn ng-binding"]'),


    }

  }

  get isAngular() { return false }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/apps/apps_store?locale=en`
  
  }
}

module.exports = StoreAppPage
