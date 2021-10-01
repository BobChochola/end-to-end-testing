let Page = require('../../framework/models/Page.js')

class ProductSubscriptionShowPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="ProductSubscriptionsShowController"]'),
      'pause subscription button': this.by.css('button[ng-click="endProductSubscription()"]'),
      'resume subscription button': this.by.css('button[ng-click="resumeProductSubscription()"]'),
      'row of product subscription show': this.by.css('tr[ng-repeat^="order"]'),
      'confirm button': this.by.css('button[ng-click="confirm()"]'),
      'resume subscription date field': this.by.css('input[ng-model="billingDate"]'),
      'resume subscription status': this.by.css('div.product-subscription-status'),
    }

  }

  get samples() {

    return {
      'date': this.props.sample.genDate(1),
      'order number': `${this.getVariable('order info')}`.substr(52, 16).replace(/[^0-9]/g,''),
    }

  }

}

module.exports = ProductSubscriptionShowPage
