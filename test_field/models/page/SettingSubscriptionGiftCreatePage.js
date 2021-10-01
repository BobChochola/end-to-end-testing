let Page = require('../../framework/models/Page.js')

class SettingSubscriptionGiftCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="SubscriptionsSettingsController"]'),
      'free gift field': this.by.css('input[name="discountableQuantity"]'),
      'subscription field': this.by.css('input[name="subscriptionPeriod"]'),
      'select button': this.by.css('button[ng-click="openSelectDiscountableProductModal()"]'),
      'select popover': this.by.css('div.dialogbox.ng-scope'),
      'search field': this.by.css('input[ng-model="searchInput"]'),
      'select of free gift list': this.by.css('input[ng-model="product.checked"]'),
      'row of popover free gift list': this.by.css('[ng-repeat="product in results"]'),
      'save button': this.by.css('button[ng-click="save()"]'),
      'row of free gift': this.by.css('div.row.discountable-product-list'),
      'update button': this.by.css('button[ng-click="submitForm()"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/product_subscriptions/subscription_gift/new?locale=en`
  
  }

}

module.exports = SettingSubscriptionGiftCreatePage