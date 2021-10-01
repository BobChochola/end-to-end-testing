let Page = require('../../framework/models/Page.js')

class ShopReturnOrderPage extends Page {

  get elements() {
    return {
      'id': this.by.css('section[class*="return-items-section"]'),
      'agree checkbox': this.by.css('input[name="policy"]'),
      'confirm return button': this.by.css('button[ng-click="submitForm()"]'),
      'not select item error': this.by.css('p[ng-if="errors.notSelectReturnItems"]'),
      'error message': this.by.css('div[class*="has-error"]'),
      'back to order show button': this.by.css('a[class*="back-to-order"]'),

      // select return product
      'order link': this.by.css('a[href*="/orders/"]'),
      'row of product checkbox': this.by.css('input[class*="return-item-checkbox"]'),
      'row of product name': this.by.css('div[ng-repeat*="returnItems"] div[class="description"]'),
      'row of product quantity': this.by.css('div[ng-repeat*="returnItems"] div[class*="text-center"]:nth-child(2)'),
      'row of product price': this.by.css('div[ng-repeat*="returnItems"] div[class*="text-center"]:nth-child(3)'),
      'row of product return quantity': this.by.css('div[ng-repeat*="returnItems"] div[class*="text-center"]:nth-child(4)'),
      'row of product return quantity field': this.by.css('input[name="item_quantity"]'),
      'return reason dropdown': this.by.css('select[ng-model="item.selectedReason"]'),
      'first return reason dropdown option': this.by.css('div[ng-repeat*="returnItems"]:nth-child(1) option'),
      'second return reason dropdown option': this.by.css('div[ng-repeat*="returnItems"]:nth-child(2) option'),
      'third return reason dropdown option': this.by.css('div[ng-repeat*="returnItems"]:nth-child(3) option'),
      'return reason field': this.by.css('input[ng-model="item.reasonContent"]'),

      // return method
      'return delivery dropdown': this.by.css('select[ng-model="selectedReturnDelivery"]'),
      'return delivery dropdown option': this.by.css('select[ng-model="selectedReturnDelivery"] option'),
      'name field': this.by.css('input[name="recipient_name"]'),
      'phone field': this.by.css('input[name="recipient_phone"]'),

      //refund detail
      'refund dropdown': this.by.css('select[ng-model="returnOrder.paymentMethod"]'),
      'refund dropdown option': this.by.css('select[ng-model="returnOrder.paymentMethod"] option'),
      'bank account field': this.by.css('input[name="bankAccount"]'),

      //new delivery modularize address
      'delivery address dropdown': this.by.css('.address-module-dropdown select'),
      'delivery address dropdown option': this.by.css('.address-module-dropdown select option'),
      'delivery address field': this.by.css('input[ng-model="addr[preference.field_name]"]'),

    }
  }


  get samples() {
    return {
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    }
  }
}

module.exports = ShopReturnOrderPage