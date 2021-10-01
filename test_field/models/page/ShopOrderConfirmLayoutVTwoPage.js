let Page = require('../../framework/models/Page.js')

class ShopOrderConfirmLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div.page-order-show[id="checkout-container"]'),
      'summary collapse': this.by.css('div.cart-summary'),
      'row of product unit price': this.by.css('div.item-price'),
      'row of product subtotal': this.by.css('.row.cart-item .item-total'),
      'row of product quantity': this.by.css('div.item-quantity'),
      'row of product items': this.by.css('div.table-row.cart-item'),
      'order summary': this.by.css('.order-summary'),
      'item subtotal': this.by.css('div.subtotal'),
      'delivery fee': this.by.css('div.delivery-fee'),
      'total': this.by.css('div.total'),
      'order confirm info': this.by.css('.confirm-message'),
      'remarks for shop content': this.by.css('div[class="col-sm-12"]'),
      'delivery detail': this.by.css('.delivery-detail'),
      'payment detail': this.by.css('div.panel-body div:nth-child(3) div.order-detail-section:nth-child(2)'),

      'row of order detail': this.by.css('.order-detail-section .row'),
      'row of customer detail': this.by.css('.order-detail-section:nth-child(2) .row'),
      'row of delivery detail': this.by.css('.delivery-detail .row'),
      'row of payment detail': this.by.css('.panel-body div:nth-child(3) > div:nth-child(2) > .row'),
      'remarks for shop content': this.by.css('div[class="col-sm-12"]'),

      'shop and customer comments field': this.by.css('textarea[placeholder="Enter a comment for this order"]'),
      'send button': this.by.css('button[id="btn-form-submit"]'),
      'message sender content': this.by.css('li[class="media ng-scope message-sender"]'),
    }
  }

  get samples() {
    return {
      'name': '陳小明',
      'email': 'testuser@shoplineapp.com',
      'phone': '0912345678',
      'address': "123 white street",
      'message photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'order date': this.props.sample.genDate(0, 0, '-'),
    }
  }
}

module.exports = ShopOrderConfirmLayoutVTwoPage