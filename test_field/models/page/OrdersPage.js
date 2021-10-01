let Page = require('../../framework/models/Page.js')

class OrdersPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.orders-table'),
      'language dropdown': this.by.css('#current-language-name'),
      'language dropdown option': this.by.css('[aria-labelledby="menu-languages"] a'),
      'trial plan block': this.by.css('[class*="trial-plan-block"]'),
      'header': this.by.css('div[class*="box-header"]'),
      'row of order links': this.by.css('tr[ng-repeat^="order in order"] a[href*="/orders/"]'),
      'row of order checkbox': this.by.css('input[ng-model="orders[$index].selected"]'),
      'row of order list': this.by.css('.orders-table > div > table > tbody > tr'),
      'row of order status': this.by.css('div[ng-class="order_label[$index]"]'),
      'row of delivery status': this.by.css('div[ng-class="order_delivery_label[$index]"]'),
      'row of payment status': this.by.css('div[ng-class="order_payment_label[$index]"]'),
      'row of date': this.by.css('table > tbody > tr > td:nth-child(3)'),

      'no matched result': this.by.css('div.text-center.empty-message.ng-binding'),

      'Orders delivery type dropdown': this.by.css('.page-header-button-block .export-section .dropdown-toggle'),
      'Family Mart Freeze B2C Order Management': this.by.css('a[href*="sl_logistics_fmt_freeze"]'),
      'Family Mart B2C Order Management': this.by.css('li.ng-scope a[href$="family_mart_b2c"]'),
      'Family Mart C2C Order Management': this.by.css('li.ng-scope a[href$="family_mart_c2c"]'),
      'Seven Eleven B2C Order Management': this.by.css('li.ng-scope a[href$="seven_eleven_b2c"]'),
      'Seven Eleven C2C Order Management': this.by.css('li.ng-scope a[href$="seven_eleven_c2c"]'),
      'Tcat Frozen Order Management': this.by.css('li.ng-scope a[href$="tcat_frozen"]'),
      'Tcat Refrigerated Order Management': this.by.css('li.ng-scope a[href$="tcat_refrigerated"]'),
      'Tcat Room temp Order Management': this.by.css('li.ng-scope a[href$="tcat_roomtemp"]'),
      'tcat non executed tab': this.by.css('.box-info.full > ul > li:nth-child(2) > a'),
      'tcat shippable tab': this.by.css('.box-info.full > ul > li:nth-child(4) > a'),
      'breadcrumb': this.by.css('.page-heading h1 > span:not(.ng-hide):nth-child(5)'),
      'order is open tab': this.by.xpath('//*[@id="common-orders"]/div[3]/div/div[2]/ul/li[2]/a'),
      'non executed tab': this.by.css('.box-info.full > ul > li:nth-child(2) > a'),
      'shipped tab': this.by.css('.box-info.full > ul > li:nth-child(4) > a'),
      'collected tab': this.by.css('.box-info.full > ul > li:nth-child(6) > a'),
      'shippable tab': this.by.css('.box-info.full > ul > li:nth-child(3) > a'),
      'processing tab': this.by.css('.box-info.full > ul > li:nth-child(3) > a'),
      'arrived tab': this.by.css('.box-info.full > ul > li:nth-child(6) > a'),
      'returned tab': this.by.css('.box-info.full > ul > li:nth-child(9) > a'),
      'tab': this.by.css('.nav-tabs li:not(.ng-hide) a'),
      'search label': this.by.css('.well-section:not(.ng-hide) span.label-selected.label-apply'),
      'alert': this.by.css('.alert'),
      'view count dropdown': this.by.css('.limit-dropdown-header'),
      'one hundred': this.by.css('li[ng-click="setOrderView(100)"]'),
      'export dropdown': this.by.css('orders-more-actions:not(.ng-hide) li.dropdown'),
      'export dropdown option': this.by.css('.clearfix .pull-right li.dropdown li'),
      'export popover': this.by.css('.modal-content'),
      'export alert': this.by.css('.alert.ui-pnotify-container.alert-success.ui-pnotify-shadow'),
      'export button': this.by.css('button[ng-click="export()"]'),
      'export orders by date checkbox': this.by.css('input[value="duringDates"]'),
      'selected orders checkbox': this.by.css('input[value="selectedOrders"]'),
      'start date field': this.by.css('input[ng-model="filters.start_date"]'),
      'end date field': this.by.css('input[ng-model="filters.end_date"]'),

      'Option bar': this.by.css('.toggle-field-item-btn'),
      'Option bar list': this.by.css('[ng-repeat="(index, field) in items.fields"]'),
      'Option father checkbox': this.by.css('input[ng-click="onSelectAllFields(type)"]'),
      'Option checkbox': this.by.css('ul[aria-expanded="true"] li[ng-repeat="(index, field) in items.fields"] label'),
      'Option hidden bar': this.by.css('div[class="field-item-block ng-scope field-item-block-hide"]'),
      'The Last Fields selected': this.by.css('[ng-repeat="(index, selectItem) in selectedFields"]:nth-last-of-type(1)'),
      'reset button': this.by.css('button[ng-click="onResetAvailableFields()"]'),
      'cancel button': this.by.css('button[ng-click="cancel()"]'),
      'Option cancel button': this.by.css('.active-fields-block li:nth-last-of-type(1) a'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),

      'select all checkbox': this.by.css('input[ng-model="state.selectedPageOrders"]'),
      'bulk actions dropdown': this.by.css('orders-table > div.form-inline.bulk-action-section.row > div > span.dropdown > button'),
      'Update Status': this.by.css('li[ng-click="onChooseBulkEdit()"]'),
      'Delete': this.by.css('li[ng-click="deleteOrders()"]:not(.ng-hide)'),
      'bulk actions dropdown all options': this.by.css('ul[class="dropdown-menu bulk-edit-dropdown"]'),
      'status type dropdown': this.by.css('button[ng-style="bulkEditStyle"]'),
      'execute shipment button': this.by.css('[ng-click^="confirm"]'),

      'status item dropdown': this.by.css('button[ng-style="bulkStatusStyle"]'),
      'status dropdown option': this.by.css('ul.bulk-edit-dropdown a'),
      'Unfulfilled':  this.by.xpath('//*[@id="common-orders"]/div[3]/div/div[2]/div/orders-table/div[1]/div/sapn/sapn/span[2]/ul/li[1]'),
      'Confirmed':    this.by.xpath('//*[@id="common-orders"]/div[3]/div/div[2]/div/orders-table/div[1]/div/sapn/sapn/span[2]/ul/li[2]'),
      'Paid':         this.by.xpath('//*[@id="common-orders"]/div[3]/div/div[2]/div/orders-table/div[1]/div/sapn/sapn/span[2]/ul/li[2]'),
      'Open':         this.by.xpath('//*[@id="common-orders"]/div[3]/div/div[2]/div/orders-table/div[1]/div/sapn/sapn/span[2]/ul/li[1]'),
      'update button': this.by.css('[ng-click="updateOrders()"]:not([data-loading])'),
      'confirm popover': this.by.css('.modal.fade.ng-isolate-scope.dialogbox-modal-window.in > div > div'),
      'execute shipment popover': this.by.css('.modal.fade.ng-isolate-scope.in > div > div'),
      'send notification checkbox': this.by.css('.modal-footer input'),
      'OK button': this.by.css('.modal button[ng-click="confirm()"]:not(.ng-hide)'),
      'execute shipment OK button': this.by.css('button.btn.btn-success'),
      'search field': this.by.css('[ng-model*="searchParams[state.searchFields"]'),
      'search dropdown': this.by.css('a.sb-toggle.ng-binding'),
      'search dropdown option': this.by.css('selectbox[options="orderSearchFields"] div[class="sb-container"] a.sb-item-handle.ng-binding'),
      'print labels button': this.by.css('button[ng-click="printLabels(ordersSelected,\'selected\')"]'),

      'confirm checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'OK button': this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'additional filters button': this.by.css('#open-filter-section'),
      'additional filters section': this.by.css('.filter-section'),
      'filter date start': this.by.css('input[name="start_at"]'),
      'filter date end': this.by.css('input[name="end_at"]'),
      'pick today button': this.by.css('[id^=datepicker] button.active'),
      'filter dropdown': this.by.css('select[ng-model="optionsFilter"]'),
      'filter dropdown option': this.by.css('select[ng-model="optionsFilter"] option'),
      'order status filter dropdown': this.by.css('select[name="status_filter"]'),
      'order status filter dropdown option': this.by.css('select[name="status_filter"] option'),
      'payment status filter dropdown': this.by.css('select[name="payment_status_filter"]'),
      'payment status filter dropdown option': this.by.css('select[name="payment_status_filter"] option'),
      'payment method filter dropdown': this.by.css('select[name="payment_filter"]'),
      'payment method filter dropdown option': this.by.css('select[name="payment_filter"] option'),
      'delivery status filter dropdown': this.by.css('select[name="delivery_status_filter"]'),
      'delivery status filter dropdown option': this.by.css('select[name="delivery_status_filter"] option'),
      'delivery method filter dropdown': this.by.css('select[name="delivery_filter"]'),
      'delivery method filter dropdown option': this.by.css('select[name="delivery_filter"] option'),
      'close alert button': this.by.css('.ui-pnotify-closer'),
      'c2c order list': this.by.css('#seven-eleven-c2c'),
      'loading icon': this.by.css('.padding-md:not(.ng-hide)'),
      'label report status filter dropdown': this.by.css('[name="label_and_export_status_filter"]'),
      'label report status filter dropdown option': this.by.css('[name="label_and_export_status_filter"] option'),
      'print shipment label button': this.by.css('button[ng-click="printSevenC2CReceipt(order)"]'),
      'block description': this.by.css('.tabel-cell-block h4'),
      'remove filter condition button': this.by.css('span:not(.ng-hide) [ng-click^="onFilterRemove"]'),

      //limit trial merchant
      'popup': this.by.css('div[class="modal-dialog"]'),
      'check upgrade plan button': this.by.css('button[ng-click="confirm()"]'),
      'close popup button': this.by.css('div[class="modal-dialog"] button[ng-click="cancel()"]'),
      'execute shipment button': this.by.css('button.btn.btn-primary.ng-binding'),
      'attention popover': this.by.css('div.dialogbox.ng-scope'),
      'attention cancel order links': this.by.css('div[ng-bind-html="cancelledOrderList"]'),
      'execute others order button': this.by.css('button[ng-click="deliveryWithoutCancelledOrders()"]'),
      'execute all button': this.by.css('button[ng-click="deliveryAllOrders()"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/orders?locale=en`

  }

  get samples() {

    return {

      'date': `${this.props.sample.genDate()}`,
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'phone': '0912345678',
      'expired order': '2019050209312877',
      'collected order':'201905140403022',
      'failed order': '2019051404062687',
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'second order number': `${this.getVariable('second order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'child order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,'').toString()+'A',
      'manual order page': `${this.props.baseURL}/admin/${this.props.account.handle}/orders/new?locale=en`,
      'order number 2': `${this.getVariable('order info 2')}`.substr(52, 17).replace(/[^0-9]/g,''),
      'spilt order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,'') + 'A',
    }

  }


}

module.exports = OrdersPage