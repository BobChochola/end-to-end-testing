let Page = require('../../framework/models/Page.js')

class OrdersCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('.order-form'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),
      //Customer Detail
      'select customer button': this.by.css('[ng-click="onSelectCustomer()"]'),
      'select popover': this.by.css('.modal-content'),
      'search customer field': this.by.css('input[ng-model="searchString"]'),
      'row of customer checkbox': this.by.css('input[name="selectedUser"]'),
      'ok save button': this.by.css('button[ng-click="save()"]'),
      'phone number field': this.by.css('[name="customerPhone"]'),
      'save phone number checkbox': this.by.css('[ng-model="customer.savePhone"]'),
      'new customer button': this.by.css('button[ng-click="state.customCustomerClicked = true; submitClicked = false;"]'),
      'name field': this.by.css('input[name="customerName"]'),
      'email field': this.by.css('input[name="customerEmail"]'),
      'next button': this.by.css('button[ng-click="submit()"]'),
      //Add Products
      'select product button': this.by.css('button[ng-click="openProductPicker()"]'),
      'search product field': this.by.css('[ng-model="searchInput"]'),
      'row of select product': this.by.css('div.col-xs-3.col-md-3.ng-scope'),
      'row of product': this.by.css('[ng-repeat="item in subtotalItems"]'),
      'product next button': this.by.css('button[ng-click="prodcutSubmit()"]'),
      'variation dropdown': this.by.css('.variation-selector'),
      'variation dropdown option': this.by.css('.variation-selector option'),
      'product quantity field': this.by.css('.order-quantity-input'),
      //Delivery Detail
      'delivery detail': this.by.css('[ng-click="toggleSection(\'delivery\')"]'),
      'shipping destination dropdown': this.by.css('[ng-model="delivery.country"]'),
      'shipping destination dropdown option': this.by.css('[ng-model="delivery.country"] option'),
      'delivery method dropdown': this.by.css('[ng-model="delivery.option"]'),
      'delivery method dropdown option': this.by.css('[ng-model="delivery.option"] option'),
      'delivery address field':this.by.css('input[ng-model="addr[preference.field_name]"]'),
      'store pick up city dropdown': this.by.css('select[name="level_1"]'),
      'store pick up city dropdown option': this.by.css('select[name="level_1"] option'),
      'store pick up area dropdown': this.by.css('select[name="level_2"]'),
      'store pick up area dropdown option': this.by.css('select[name="level_2"] option'),
      'store pick up district dropdown': this.by.css('select[name="level_3"]'),
      'store pick up district dropdown option': this.by.css('select[name="level_3"] option'),
      'store pick up store name dropdown': this.by.css('select[name="store"]'),
      'store pick up store name dropdown option': this.by.css('select[name="store"] option'),

      'delivery address dropdown': this.by.css('div.address-module.ng-scope.ng-isolate-scope > div > div:nth-child(n) > div > div.form-group-address > div.controls >select'),
      'delivery address dropdown option': this.by.css('div.address-module.ng-scope.ng-isolate-scope > div > div:nth-child(n) > div > div.form-group-address > div.controls >select > option'),

      'default null value': this.by.css('option[selected="selected"]'),
      'seven icon':this.by.css('.store-selector-icon'),
      'find a store button': this.by.css('button[ng-click*="openStoreMapSelector(storeType)"]'),
      'store detail': this.by.css('div[ng-show="delivery.storeCode"]'),
      'same as customer info checkbox': this.by.css('[ng-model="$parent.sameAsCustomer"]'),
      'delivery next button':this.by.css('[ng-click="deliverySubmit()"]'),
      'delivery note': this.by.css('.help-block:not(.ng-hide)'),
      //Payment Detail
      'payment method dropdown': this.by.css('[ng-model="$parent.payment"]'),
      'payment method dropdown option': this.by.css('[ng-model="$parent.payment"] option'),
      'invoice type dropdown': this.by.css('select[name="invoiceType"]'),
      'invoice type dropdown option': this.by.css('select[name="invoiceType"] option'),
      'invoice carrier type dropdown': this.by.css('[name="invoiceCarrierType"]'),
      'invoice carrier type dropdown option': this.by.css('[name="invoiceCarrierType"] option'),
      'invoice mobile barcode field': this.by.css('input[name="invoiceMobileBarcode"]'),
      'invoice NPC barcode field': this.by.css('input[name="invoiceNpcBarcode"]'),
      'invoice donation code dropdown': this.by.css('[name="invoiceDonationCode"]'),
      'invoice donation code dropdown option': this.by.css('[name="invoiceDonationCode"] option'),
      'company name field': this.by.css('input[name="invoiceBuyerName"]'),
      'tax ID field': this.by.css('input[name="invoiceTaxId"]'),
      'invoice country dropdown': this.by.css('select[name="invoiceCountry"]'),
      'invoice country dropdown option': this.by.css('select[name="invoiceCountry"] option'),
      'invoice city dropdown': this.by.css('select[name="invoiceRegion"]'),
      'invoice city dropdown option': this.by.css('select[name="invoiceRegion"] option'),
      'invoice district dropdown': this.by.css('select[name="invoiceDistrict"]'),
      'invoice district dropdown option': this.by.css('select[name="invoiceDistrict"] option'),
      'invoice address field': this.by.css('input[name="invoiceAddress"]'),
      //Order Summary
      'create order button': this.by.css('[ng-click="confirm()"]'),
      'error message frame': this.by.css('[ng-if="errorText"]'),
      'alert': this.by.css('.alert'),

      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),
      'name field': this.by.css('input[name="customerName"]'),
      'new customer button': this.by.css('button[class="btn btn-default ng-binding"][ng-click="state.customCustomerClicked = true; submitClicked = false;"]'),
      'item name field': this.by.css('input[id="custom-item-name"]'),
      'item price field': this.by.css('input[id="custom-unit-price"]'),
      'item quantity': this.by.css('input[id="custom-quantity"]'),
      'email field': this.by.css('input[class="form-control ng-pristine ng-untouched ng-invalid ng-invalid-required ng-valid-pattern ng-valid-email"]'),
      'add discount button': this.by.css('button[type="button"][ng-click="onAddDiscountClick()"]'),
      'add custom item button':this.by.css('button[ng-click="openCustomProductForm()"]'),
      'discount field': this.by.css('input[id="custom-item-name"]'),
      'discount amount': this.by.css('input[id="custom-unit-price"]'),
      'save button': this.by.css('button[class="btn btn-primary ladda-button ng-binding"]'),
      'order summary': this.by.css('div[class="panel-body"]'),
      'remove discount button': this.by.css('button[ng-click="onDeleteDiscount()"]'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/orders/new?locale=en`

  }

  get samples() {

    return {
      'date': `${this.props.sample.genDate()}`,
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'new email': `${this.props.sample.genNewEmail()}`,
      'phone': '0912345678',
      'address': '14F., No.44, Ln. 11, Guangfu N. Rd.',
      'shop code': '916527',
      'shop name': '清愿門市',

      'error message':'Selected payment or delivery method is not acceptable, please check setting or re-select it.',
      'chinese error message':'訂單不適用選取的付款或送貨方式，請確認相關設定或重選。',
      'blacklist error message': 'Cannot create order : Customer of the order is in blacklist.',
      'chinese blacklist error message':'訂單顧客已被列入黑名單，無法新增訂單！',
    }

  }


}

module.exports = OrdersCreatePage