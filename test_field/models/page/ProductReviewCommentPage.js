let Page = require('../../framework/models/Page.js')

class ProductReviewCommentPage extends Page {

  get elements() {
    return {
      'id': this.by.css('.table-hover'),
      'popup': this.by.css('div[class="modal-content"]'),
      'confirm delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'confirm delete button': this.by.css('button[ng-click="confirm()"]:not(.ng-hide)'),
      'sort dropdown': this.by.css('selectbox[value="sorting"] a.sb-toggle'),
      'latest option': this.by.css('ul.sb-dropdown a[title*="Latest"]'),
      'oldest option': this.by.css('ul.sb-dropdown a[title*="Oldest"]'),
      'high to low option': this.by.css('ul.sb-dropdown a[title*="From High to Low"]'),
      'low to high option': this.by.css('ul.sb-dropdown a[title*="From Low to High"]'),
      'all checkbox': this.by.css('div[class="table-responsive"] input[ng-click="toggleSelectAll()"]'),
      'publish button': this.by.css('button[ng-click="bulkUpdate(\'active\')"]'),
      'delete button': this.by.css('button[ng-click="deleteConfirm()"]'),
      'comments': this.by.css('tbody[ng-model="productReviewComments"]'),
      'row of comment': this.by.css('tr[ng-repeat*="productReviewComment"]'),
      'row of product name': this.by.css('tr[ng-repeat*="productReviewComment"] td:nth-child(3)'),
      'row of product comment': this.by.css('div[class*="review-comment-message-content"]'),
      'row of product comment time': this.by.css('tr[ng-repeat*="productReviewComment"] td:nth-child(6)'),
      'row of product order number': this.by.css('tr[ng-repeat*="productReviewComment"] td a'),
      'row of hide button': this.by.css('[ng-click="hide(productReviewComment)"]'),
      'row of publish button': this.by.css('[ng-click="show(productReviewComment)"]'),
      'star in first row': this.by.css('tr[ng-repeat*="productReviewComment"]:nth-child(1) [class="fa fa-star"]'),
      'star in second row': this.by.css('tr[ng-repeat*="productReviewComment"]:nth-child(2) [class="fa fa-star"]'),
      'star in third row': this.by.css('tr[ng-repeat*="productReviewComment"]:nth-child(3) [class="fa fa-star"]'),
    }
  }

  get samples() {

    return {
    'second comment time with hyphen': `${this.getVariable('second comment time')}`.replace(/\//g,'-'),
    'first comment time with hyphen': `${this.getVariable('first comment time')}`.replace(/\//g,'-'),
    }

  }


  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/product_review_comments?locale=en`
  
  }
}

module.exports = ProductReviewCommentPage
