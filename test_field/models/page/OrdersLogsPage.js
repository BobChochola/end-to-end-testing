let Page = require('../../framework/models/Page.js')

class OrdersLogsPage extends Page {

  get elements() {

    return {
     'id': this.by.css('li[ng-repeat="log in logs"]'),
     'product status': this.by.css('div[class="LogDetail-itemHeader ng-binding"]'),
     'product detail': this.by.css('div[class="LogDetail-wrapper"]'),
    }

  }

}
module.exports = OrdersLogsPage
