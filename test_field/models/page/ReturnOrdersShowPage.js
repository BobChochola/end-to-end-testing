let Page = require('../../framework/models/Page.js')

class ReturnOrdersShowPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="ReturnOrdersShowController"] [ng-model="orderStatusFilter"]'),
      
      'popover': this.by.css('div.modal-dialog'),
      'alert': this.by.css('.alert'),
      'notification mail checkbox': this.by.css('input[ng-model="checkboxDialog"]'),
      'yes button': this.by.css('div.modal-footer button.btn-primary[ng-click="confirm()"]'),
      'return order no': this.by.css('[label="Return No."] div.field-value'),
      'parent order number': this.by.css('div[ng-show*="return_order.order"] a[class="ng-binding"]'),
      'activity log': this.by.css('li[ng-repeat="log in logs"]'),

      'return status': this.by.css('div.box-info:nth-child(1) div[label="Status"] div.label'),
      'return no': this.by.css('div[label="Return No."] div.field-value div'),
      'refund status': this.by.css('div.box-info:nth-child(2) div[label*="Status"] div.label'),

      'return status dropdown': this.by.css('select[ng-model="orderStatusFilter"]'),
      'confirmed return': this.by.css('select[ng-model="orderStatusFilter"] option[label="Confirmed"]'),
      'completed return': this.by.css('select[ng-model="orderStatusFilter"] option[label="Completed"]'),
      'cancelled return': this.by.css('select[ng-model="orderStatusFilter"] option[label="Cancelled"]'),

      'refund status dropdown': this.by.css('select[ng-model="paymentStatusFilter"]'),
      'pending refund': this.by.css('select[ng-model="paymentStatusFilter"] option[label="Pending"]'),
      'refunded refund': this.by.css('select[ng-model="paymentStatusFilter"] option[label="Refunded"]'),
      'row of product detail': this.by.css('.media.return-order-item'),
      'bundle tag': this.by.css('span[class*="label-bundle-price"]'),
      'product details': this.by.css('div[ng-repeat="item in return_order.items track by item._id"]'),
      'refund area': this.by.css('form[name="refundAmountForm"]'),
      'return order number label': this.by.css('div[label="Return No."]'),
      'refund amount field': this.by.css('input[name="refundAmount"]'),
      'refund amount confirm button': this.by.css('button[ng-click="setRefundAmount()"]'),
      'refund error message': this.by.css('div[data-field-name="Refund Amount"] p[ng-show="hasError"]'),
      'refund amount': this.by.css('div[ng-if="!_.isNull(return_order.order_payment.refund_amount)"]'),

      // product details
      'product detail area': this.by.css('div[class*="return-order-items"]'),
      'product inspection area':this.by.css('div[class*="inspect-info"]'),
      'print order button': this.by.css('a[ng-href$="invoice.pdf"]'),
      'inspection button': this.by.css('button[ng-click="toInspectionPage()"]'),
      'inspection status': this.by.css('div[ng-class*="return_order.inspect_status"]'),
      'show return reason checkbox': this.by.css('label[ng-if*="return_order.returned_by"] input'),
      'show inspection remark checkbox': this.by.css('label[ng-disabled*="return_order.inspect_status"] input'),
      'row of return product': this.by.css('div[class="media return-order-item"]'),
      'row of return product reason': this.by.css('div[ng-show="inspectDisplayStatus.returnReason"]'),
      'row of inspect remark': this.by.css('div[ng-show="inspectDisplayStatus.inspectMark"]'),

      //delivery details
      'delivery details edit button': this.by.css('[name="returnOrderDeliveryForm"] [ng-click="onEditDeliveryAddress()"]'),
      'delivery details save button': this.by.css('div[ng-if="state.editingDeliveryAddress"] button[class="btn btn-default ng-binding"]:nth-child(2)'),
      'return delivery status': this.by.css('div[ng-class*="order_delivery.status]"]'),
      'return type': this.by.css('form[name="returnOrderDeliveryForm"] div[label="Type"]'),
      'return name': this.by.css('div[label="Return Name"] div[class="field-value"]'),
      'return phone': this.by.css('div[label="Return Phone"] div[class="field-value"]'),
      'return address': this.by.css('div[label="Return Address"]'),
      'return name field': this.by.css('input[id="return-order-recipient-name"]'),
      'return phone field': this.by.css('input[id="return-order-recipient-phone"]'),
      'return address': this.by.css('div[label="Return Address"]'),
      'return address field': this.by.css('div[label="Return Address"] input[name="address_1"]'),
      'return city field': this.by.css('[name="select_city"]'),
      'return address dropdown': this.by.css('div[label="Return Address"] select'),
      'return address dropdown option': this.by.css('div[label="Return Address"] select option'),
      'update tracking button': this.by.css('form[name="returnOrderDeliveryForm"] button[ladda="updatingTracking"]'),
      'tracking number field': this.by.css('input[ng-model="delivery_data.tracking_number"]'),
      'courier name field': this.by.css('div[label="Courier Name"] input'),
      'ok button': this.by.css('button[class="btn btn-primary ng-binding"]'),
      'courier name': this.by.css('div[class="form-inline"] div[label="Courier Name"] span[class="ng-binding ng-scope"]'),
      'tracking number': this.by.css('[ng-show*="tracking_number"] .field-value'),
      'return tracking number': this.by.css('[label="Return tracking no."] .field-value'),
      'return delivery status dropdown': this.by.css('select[ng-change="onDeliveryStatusFilterChanged()"]'),
      'return delivery status dropdown option': this.by.css('select[ng-change="onDeliveryStatusFilterChanged()"] option'),
    }
  }

  get url() { return; }

  get samples() { return{
      'date now': `${this.props.sample.genDate(0,0,'-')}`,
      'order number': `${this.getVariable('order info')}`.substr(52, 17).replace(/[^0-9]/g,''),
    } 
  }
}

module.exports = ReturnOrdersShowPage
