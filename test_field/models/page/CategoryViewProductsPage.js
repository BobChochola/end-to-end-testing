let Page = require('../../framework/models/Page.js')

class CategoryViewProductsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="CategoriesShowController"] [ng-click="openProductPicker()"]'),
      'row of selected product list': this.by.css('tr[ng-repeat="product in products"]'),
      'selected products': this.by.css('tbody[ng-model="products"]'),
      //popover
      'checkbox of product list': this.by.css('[class="item-panel"] input[class="item-check"]'),
      'add product to category button': this.by.css('button[ng-click="openProductPicker()"]'),
      'add product popover': this.by.css('.modal-dialog .item-picker'),
      'popover search field': this.by.css('.modal-dialog input[ng-model="searchInput"]'),
      'list of popup product list': this.by.css('.item-content'),
      'confirm button': this.by.css('button[ng-click="confirm()"]'),
    }

  }

}

module.exports = CategoryViewProductsPage 
