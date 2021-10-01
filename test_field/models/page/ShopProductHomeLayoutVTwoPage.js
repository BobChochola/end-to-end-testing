let Page = require('../../framework/models/Page.js')

class ShopProductHomeLayoutVTwoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[class="col-md-9"]'),
      'product of products list': this.by.css('div[class="Image-boxify Product-image"]'),
      'row of categories': this.by.css('div[class="List-item ProductList-nestedList sl-dropdown ng-isolate-scope is-collapsed"]'),
      'collapse button of categories list': this.by.css('i[class="fa sl-dropdown-toggle pull-right collapsed"]'),
      'search icon': this.by.css('form[class="Product-searchField-form sl-product-search ng-pristine ng-valid ng-isolate-scope"]'),
      'search field': this.by.css('input[placeholder="Search Products"]'),
      'login button': this.by.css('ul.NavigationBar-actionMenu.pull-right>li:nth-child(4)'),
      'member center button': this.by.css('a[class="NavigationBar-actionMenu-button"]'),
    }

  }

  get url() {

    return `${this.props.sample.genShopURL(this.props.account.handle)}?locale=en`

  }

}

module.exports = ShopProductHomeLayoutVTwoPage