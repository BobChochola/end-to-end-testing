let Page = require('../../framework/models/Page.js')

class PlaceReturnOrderPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="ReturnOrdersFormController"] [ng-click^="createReturnOrder"]'),
      'place return button': this.by.css('button[ng-click="createReturnOrder()"][ng-disabled="returnOrderForm.$invalid || isInvalidQuantity()"]'),
      'popover': this.by.css('div.modal-content'),
      'OK button': this.by.css('div.modal-footer button.btn-primary[ng-click="confirm()"]'),
      'return delivery dropdown': this.by.css('.box-info:not(.ng-hide) select[name="return_delivery_options"]'),
      'return delivery dropdown option': this.by.css('.box-info:not(.ng-hide) select[name="return_delivery_options"] option'),
      'row of product checkbox': this.by.css('span:not(.hide) input[ng-change="statusOfAllSelected(item)"]'),
      'bundle group tag': this.by.css('span.label-bundle-price'),
      'all selected checkbox': this.by.css('input[ng-click="checkAll()"]'),
      'row of product list': this.by.css('[ng-repeat="item in order.subtotal_items"]'),
      'recipient name field': this.by.css('input[name="recipient_name"]'),
      'recipient phone field': this.by.css('input[name="recipient_phone"]'),
      'return payment dropdown': this.by.css('.box-info:not(.ng-hide) select[name="return_payment_options"]'),
      'return payment dropdown option': this.by.css('.box-info:not(.ng-hide) select[name="return_payment_options"] option'),
      'quantity field': this.by.css('.order-quantity-input'),
      'select all checkbox': this.by.css('[ng-click="checkAll()"]'),
      'country dropdown': this.by.css('select[name="country"]'),
      'country dropdown option': this.by.css('select[name="country"] option'),
      'address field': this.by.css('input[ng-model="addr[preference.field_name]"]'),

      'activity log': this.by.css('li[ng-repeat="log in logs"]'),

      //edit delivery details popup address modularize
      'delivery address dropdown': this.by.css('div[style*="city"] select'),
      'delivery address dropdown option': this.by.css('div[style*="city"] option'),

    }
  }

  get samples() {
    return {
      'name': '陳小明',
      'phone': '0912345678',
      'correct account email': this.props.loginAccount.email,
      'date now': `${this.props.sample.genDate(0,0,'-')}`
    } 
  }
}

module.exports = PlaceReturnOrderPage