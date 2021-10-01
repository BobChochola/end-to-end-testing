let Page = require('../../framework/models/Page.js')

class ReturnOrdersPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="ReturnOrdersController"] [ng-model="ordersFilter"]'),
      'tab': this.by.css('[ng-click*="changeSearchTab"]'),
      'confirmed return tab': this.by.css('li[ng-repeat="tab in searchTabs"]:nth-child(2)'),
      'refund is pending tab': this.by.css('li[ng-repeat="tab in searchTabs"]:nth-child(3)'),
      'refund is returning tab': this.by.css('li[ng-repeat="tab in searchTabs"]:nth-child(4)'),
      'tab': this.by.css('a[ng-click*="changeSearchTab"]'),
      'search label': this.by.css('span.label-info:not(.ng-hide)'),
      'remove filter button': this.by.css('span.label-info:not(.ng-hide) i'),
      'search field': this.by.css('input[ng-model="searchParams.query"]'),
      'search button': this.by.css('button[ng-click="search()"]'),
      'export return order report button': this.by.css('a[ng-click*="showExportPicker"]'),
      'popover': this.by.css('div[class="modal-content"]'),
      'selected orders checkbox': this.by.css('input[id="selectedOrders"]'),
      'export button': this.by.css('button[ng-click="export()"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),

      'filter type dropdown': this.by.css('select[name="orders_filter"]'),
      'return status': this.by.css('select[name="orders_filter"] option[label="Return Status"]'),
      'refund status': this.by.css('select[name="orders_filter"] option[label="Refund Status"]'),
      'return delivery status': this.by.css('select[name="orders_filter"] option[label="Return Delivery Status"]'),
      'inspect status': this.by.css('select[name="orders_filter"] option[label="Return Inspection Status"]'),

      'filter value dropdown': this.by.css('select[name="ordersFilter"]'),
      'return confirmed': this.by.css('select[name="ordersFilter"] option:nth-child(2)'),
      'return completed': this.by.css('select[name="ordersFilter"] option:nth-child(3)'),
      'return cancelled': this.by.css('select[name="ordersFilter"] option:nth-child(4)'),
      'refund pending': this.by.css('select[name="ordersFilter"] option:nth-child(2)'),
      'refund refunded': this.by.css('select[name="ordersFilter"] option:nth-child(3)'),
      'delivery pending': this.by.css('select[name="ordersFilter"] option:nth-child(2)'),
      'delivery returning': this.by.css('select[name="ordersFilter"] option:nth-child(3)'),
      'delivery returned': this.by.css('select[name="ordersFilter"] option:nth-child(4)'),
      'delivery arrived': this.by.css('select[name="ordersFilter"] option:nth-child(5)'),
      'uninpected': this.by.css('select[name="ordersFilter"] option[label="Uninspected"]'),
      'inspected': this.by.css('select[name="ordersFilter"] option[label="Inspected"]'),

      'return orders table': this.by.css('.box-body'),
      'row of return orders': this.by.css('tr[ng-repeat="order in orders track by $index"]'),
      'row of return checkbox': this.by.css('td input[type="checkbox"]'),
      'row of order links': this.by.css('tr[ng-repeat="order in orders track by $index"] a[href*="/return_orders/"]'),
      'row of return status': this.by.css('tr[ng-repeat="order in orders track by $index"] div[ng-class="orderLabelOptions[order.status]"]'),
      'row of refund status': this.by.css('tr[ng-repeat="order in orders track by $index"] div[ng-class*="order.order_payment_status"]'),
      'row of inspect status': this.by.css('tr[ng-repeat="order in orders track by $index"] div[ng-class*="order.inspect_status"]'),
      'row of return delivery status': this.by.css('tr[ng-repeat="order in orders track by $index"] div[ng-class*="order.order_delivery_status"]'),
      'row of customer name': this.by.css('tr[ng-repeat="order in orders track by $index"] td:nth-child(8)'),
      'row of customer email': this.by.css('tr[ng-repeat="order in orders track by $index"] td:nth-child(8)'),
      'row of view original order button': this.by.css('tr[ng-repeat="order in orders track by $index"] td:nth-child(9) a'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/return_orders?locale=en`
  }

  get samples() {
    return {
      'customer name': '陳小明',
      'customer email': 'testuser@shoplineapp.com',
      'customer phone': '0912345678',
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'return order number': `${this.getVariable('return order info')}`.replace(/[^0-9]/g,''),
    }
  }
}

module.exports = ReturnOrdersPage
