let Page = require('../../framework/models/Page.js')

class CartAddOnItemsIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="AddonPromotionsController"]'),
      'add cart addon button': this.by.css('a[ng-click="addPromotion()"]'),
      'row of cart addon list': this.by.css('tr[ng-repeat="promotion in promotions"]'),
      'select checkbox of cart addon list': this.by.css('tr[ng-repeat="promotion in promotions"] td input[type="checkbox"]'),
      'select all checkbox': this.by.css('[ng-click="bulkSelectAll()"]'),
      'bulk actions dropdown': this.by.css('span[class="pull-right dropdown"] button.btn.btn-default'),
      'publish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=publish]'),
      'unpublish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=unpublish]'),
      'delete': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=delete]'),
      'unpublish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=unpublish]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]:not([disabled])'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'alert': this.by.css('.alert'),
      'cart add on items list': this.by.css('tr.ng-scope'),
      'edit button': this.by.css('a[class="btn btn-default btn-sm ng-binding"]'),
    }

  }

  get samples() {

    return {
      'date': `${this.props.sample.genDate()}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/cart_addon_items/?locale=en`

  }

}

module.exports = CartAddOnItemsIndexPage
