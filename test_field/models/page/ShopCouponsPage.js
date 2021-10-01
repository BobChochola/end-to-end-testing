let Page = require('../../framework/models/Page.js')

class ShopCouponsPage extends Page {

  get elements() {
    return {
      'id': this.by.css('[ng-controller="CouponsController"]'),
      'tab':this.by.css('a[ng-click="select($event)"]'),
    }
  }

}

module.exports = ShopCouponsPage