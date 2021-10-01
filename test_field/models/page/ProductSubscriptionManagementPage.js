let Page = require('../../framework/models/Page.js')

class ProductSubscriptionManagementPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.box-info.full.productSubscription-searchBar'),
      'setting button': this.by.css('a.btn.btn-primary.margin-top-20.ng-binding'),
      'subscription product search field': this.by.css('input.searchBar-input'),
      'row of product subscription': this.by.css('tr[ng-repeat^="product_subscription"]'),
      'row of product subscription link': this.by.css('tr[ng-repeat^="product_subscription"] a'),
      'search filter dropodown': this.by.css('.search-section .filter-label'),
      'filter type button': this.by.css('selectbox[options="segmentTypeOptions"] .sb-toggle'),
      'filter type option': this.by.css('selectbox[options="segmentTypeOptions"] .sb-dropdown li a'),
      'filter options button': this.by.css('selectbox[options="segmentOperatorOptions"] .sb-toggle'),
      'filter options option': this.by.css('selectbox[options="segmentOperatorOptions"] .sb-dropdown li a'),
      'filter value field': this.by.css('.filter-popup input'),
      'filter max value field': this.by.css('.filter-popup input[ng-min]'),
      'filter min value field': this.by.css('.filter-popup input[ng-max]'),
      'search filter button': this.by.css('.filter-popup button[type="submit"]:not([disabled])'),
      'remove search filter': this.by.css('.search-filter-items i[ng-click="onFilterRemove(filter, $index)"]'),
      'search filter item': this.by.css('.search-filter-items'),
      'apply filter label': this.by.css('span.search-filter-item'),
      'product subscriptions list': this.by.css('tbody'),
    }

  }

  get samples() {

    return {
      'email': this.props.adminAccount.email,
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/product_subscriptions?locale=en`

  }

}

module.exports = ProductSubscriptionManagementPage
