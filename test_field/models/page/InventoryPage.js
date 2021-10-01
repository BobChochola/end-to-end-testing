let Page = require('../../framework/models/Page.js')

class InventoryPage extends Page {

  get elements() {

    return {
      'id': this.by.css('.box-info.full.inventory-table'),
      'setting items': this.by.css('div.box-info'),
      'multiple channel inventory button': this.by.css('span[ng-if="featureService.hasFeature(\'shopee_api_integration\')"]'),
      'row of product list': this.by.css('tbody[ng-repeat="product in products"]'),
      'row of product variant quantity': this.by.css('tr td:nth-child(7) > span:not(.hide):not(.ng-hide)'),
      'row of quantity field': this.by.css('td:not(.ng-hide) input.form-control.ng-pristine'),
      'row of product status': this.by.css('tbody[ng-repeat="product in products"] span:not(.ng-hide)[ng-show^="product.status"]'),
      'row of select checkbox list': this.by.css('[ng-model="product.selected"]'),
      'row of variant select checkbox list': this.by.css('[ng-show="showVariation(variation, max)"] [type="checkbox"]'),
      'select all checkbox': this.by.css('input[ng-click="checkAll()"]'),
      'quantity dropdown': this.by.css('selectbox[options="qtyFilters"] a[ng-click="vm.toggle()"]'),
      'out of stock': this.by.css('ul[ng-show="vm.active"] a[title="Out of stock"]'),
      'low quantity': this.by.css('ul[ng-show="vm.active"] a[title="Low Quantity"]'),
      'unlimited quantity': this.by.css('ul[ng-show="vm.active"] a[title="Unlimited Quantity"]'),
      'quantity search button': this.by.css('button[ng-click="rangeSearch()"]'),
      'quantity search field': this.by.css('input[type="text"]'),
      'status dropdown': this.by.css('selectbox[options="statusFilters"] a[ng-click="vm.toggle()"]'),
      'published': this.by.css('ul[ng-show="vm.active"] a[title="Published"]'),
      'unpublished': this.by.css('ul[ng-show="vm.active"] a[title="Unpublished"]'),
      'search field': this.by.css('input[ng-model="searchInput"]'),
      'product name link': this.by.css('tbody[ng-repeat="product in products"] a[href$="edit"]'),
      'set button': this.by.css('td:not(.ng-hide) [ng-click^="inventorySetActions"]'),
      'save button': this.by.css(':not([disabled])[ng-click^="updateInventory"]'),
      'bulk action dropdown': this.by.css('button.btn.btn-default.bulk-action-btn'),
      'bulk action dropdown options': this.by.css('li[class="bulk-edit-list"]'),
      'update inventory': this.by.css('li[ng-click="showBulkEdit(products)"]'),
      'publish selected': this.by.css('li[ng-click="bulkAction(products, \'status\', \'active\')"]'),
      'unpublish selected': this.by.css('li[ng-click="bulkAction(products, \'status\', \'draft\')"]'),
      'bulk edit quantity popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'bulk quantity field': this.by.css('input[ng-model="inventory"]'),
      'bulk save button': this.by.css('button[ng-click="save(products)"]'),
      'bulk set button': this.by.css('button[ng-click="invenotryBulkActions(false)"]'),
      'quantity search label': this.by.css('span[ng-if="qtyFilterSnap"]'),
      'status search label': this.by.css('span[ng-if="filters.byStatus"]'),
      'remove filter button': this.by.css('i[ng-click*="clearFilter"]'),
      'apply search label': this.by.css('.label-apply'),
      'inventory content': this.by.css('div[class="body content rows scroll-y"]'),
      'tab': this.by.css('li[ng-repeat="(tab, label) in inventoryTabs"]'),
      'ok button': this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'row of addon select checkbox': this.by.css('input[ng-click="checkProduct()"]'),
      'loading icon': this.by.css('.padding-md:not(.ng-hide)'),
      // One
      'inventory of online shop': this.by.css('div:nth-child(4) > div > div.box-info.full.inventory-table > div:nth-child(4) > table > tbody:nth-child(n) > tr > td:nth-child(7)'),
    }

  }

  get samples() {

    return {
      'add ten quantity': parseInt((`${this.getVariable('origin quantity')}`.replace(/[^0-9]/g))-10).toString(),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/products/inventory?locale=en`

  }



}

module.exports = InventoryPage
