let Page = require('../../framework/models/Page.js')

class ShopProductViewCommentsLayoutVTwoPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div.product-review-breadcrumb'),
      'back to my account': this.by.css('div.product-review-container a[ng-href*="/users/"]'),

      //orders to review
      'order list': this.by.css('div.OrderList'),
      'list of order number': this.by.css('div.order-item'),

      //write a review
      'current order id': this.by.css('div[ng-if="currentOrderId"] div.order-info span'),
      'purchased date': this.by.css('div[ng-if="currentOrderId"] div.order-info span.pull-right'),
      'row of product': this.by.css('div[ng-repeat*="currentOrder.subtotal_items"]'),
      'row of product name': this.by.css('.product-title'),
      'row of one star': this.by.css('span[ng-class="star.className"]:nth-child(1)'),
      'row of five star': this.by.css('span[ng-class="star.className"]:nth-child(5)'),
      'star': this.by.css('span[ng-class="star.className"]'),
      'unclicked star': this.by.css('span.fa-star-o'),
      'clicked star': this.by.css('span.fa-star'),
      'product review field': this.by.css('textarea[name*="productReviewComments"]'),
      'send button': this.by.css('div.submit-btn-wrapper button'),
      'finished review text': this.by.css('div.finished-review-text'),
      'rate other order button': this.by.css('button[ng-click="getOrders()"]'),
      'finished image': this.by.css('img[src*="product_review_comment_success"]'),
      'back to store button': this.by.css('div.finished-review a'),

    }
  }
  get samples() {

    return {
      'fir order date': `${this.getVariable('first order date').split(' ')[0]}`,
      'sec order date': `${this.getVariable('second order date').split(' ')[0]}`,
      'comment time': `${this.props.sample.genDate(0, 0,"-")} ${this.props.sample.genPeriodHour()}:`,
    }

  }
}

module.exports = ShopProductViewCommentsLayoutVTwoPage