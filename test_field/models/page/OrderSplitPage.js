let Page = require('../../framework/models/Page.js')

class OrderSplitPage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="quantityForm"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'ZH': this.by.css('[ng-click="changeLanguage(\'zh-hant\')"]'),
      'EN': this.by.css('[ng-click="changeLanguage(\'en\')"]'),
      'User Menu': this.by.css('[id="menu-user"]'),
      'Logout': this.by.css('a[ng-click="signout()"]'),
      'row of product name': this.by.css('tr.flex-row td.field-title'),
      'bundle tag': this.by.css('span[class*="label-bundle-price"]'),
      'row of split quantity field': this.by.css('.order-quantity-input'),
      'split button': this.by.css('.btn-primary'),
      'confirm popup': this.by.css('.dialogbox'),
      'confirm button': this.by.css('.dialogbox .btn-primary'),
      'cancel button': this.by.css('.dialogbox .btn-default'),
      'ok button': this.by.css('[ng-click="save()"]'),
      'alert': this.by.css('.alert'),
      'field title': this.by.css('div.flex-meta-row:not(.ng-hide) div.field-title'),
      'original order': this.by.css('div.flex-meta-row:not(.ng-hide) div.field-origin'),
      'new order': this.by.css('div.flex-meta-row:not(.ng-hide) div.field-child'),
      'send child email checkbox': this.by.css('input[name="send_child_email"]'),
      'promotion label': this.by.css('span.promotion-label'),
      'reexecute button': this.by.css('button.btn.btn-primary.ladda-button.ng-binding'),
      'execute shipment popover': this.by.css('div[class="modal-header ng-binding"]'),
      'execute shipment ok button': this.by.css('button[ng-click="save()"]'),
      'popover': this.by.css('div.modal-header.ng-binding'),
      'OK button': this.by.css('button[ng-click="confirm()"]'),
      'discount change block': this.by.css('tbody tr:nth-last-of-type(3)'),
    }

  }

  get samples() {
    return {
      'toggle on pop-up reminder': 'Note: If non-physical electronic invoice has been created, it will be deleted automatically. And system will create new invoice according to the items in mother order.',
      'toggle off pop-up reminder': 'Note: If non-physical electronic invoice has been created, it will not be deleted automatically. Also, if you want to create new invoice for order, please go to the order page to manually create it.',
      'toggle on pop-up reminder zh': '注意：若原訂單發票已開立，系統將自動作廢原發票並根據拆單後的母訂單內容產生新發票。',
      'toggle off pop-up reminder zh': '注意：若發票已開立，系統不會自動作廢原訂單發票。拆單後的訂單若需要重新開立發票，請至該訂單頁面手動處理。',
    }
  }

}

module.exports = OrderSplitPage
