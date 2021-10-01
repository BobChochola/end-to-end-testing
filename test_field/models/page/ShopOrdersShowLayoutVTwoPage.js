let Page = require('../../framework/models/Page.js')

class ShopOrdersShowLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('#checkout-container'),
      'order placing date': this.by.css('.order-detail-section .datetime'),
      'order info': this.by.css('.panel-order-info'),
      'delivery fee': this.by.css('div.delivery-fee'),
      'applied store credits': this.by.css('div.applied-store-credits'),
      'customer comments content': this.by.css('div[class="media-body info"]'),
      'write a review button': this.by.css('.product-review-button a[ng-href*="product_review_comments"]'),
      'product review area': this.by.css('div.product-review-description'),
    }
  }

  get url() { return; }

  get samples() {
    return {
      'order placing date': new Date(Date.now()).getDate(),
    }
  }
}

module.exports = ShopOrdersShowLayoutVTwoPage