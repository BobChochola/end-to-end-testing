let Page = require('../../framework/models/Page.js')

class CategoryListPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="CategoriesController"] [ng-model="categories"]'),
      'the source Category': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/div/div[4]/div/div[2]/div[3]/ol/li[3]/div/div[1]/span[1]'),
//      'the source Category': this.by.css('div.logo'),
//      'the target subcategory list': this.by.xpath('/html/body/div[3]/div[2]/div[1]/div/div/div[4]/div/div[2]/div[3]/ol/li[2]/ol')
      'the target subcategory list': this.by.css('div.logo'),
      'row of categories list': this.by.css('.row .ui-tree-row'),
      'row of categories drag icon': this.by.css('[ng-repeat="item in categories"] .btn-drag'),
      'row of subcategories list': this.by.css('li[ng-repeat="subItem in item.children"]'),
      'delete button of categories list': this.by.css('button[ng-click*="deleteRecord"]'),
      'delete subcategory button of categories list': this.by.css('li[ng-repeat="item in categories"] button[ng-click="deleteRecord(subItem)"]'),
      'delete confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]'),
      'subcategory button of categories list': this.by.css('li[ng-repeat="item in categories"] span:not(.ng-hide)[ng-click="makeSubcategory(item)"]'),
      'parentcategory button of categories list': this.by.css('li[ng-repeat="item in categories"] span[ng-click="makeParentCategory(subItem)"]'),
      'drag icon of categories list': this.by.css('span[class="btn-drag rearrange-arrow ng-scope angular-ui-tree-handle"]'),
      'edit button of categories list': this.by.css('.btn-default:nth-child(2)'),
      'view products button of categories list': this.by.css('.btn-default:nth-child(1)'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'third layer button': this.by.css('[ng-click="makeSubcategory(subItem, item.children)"]:not(.ng-hide)'),

      'add button': this.by.css('[ng-click="addItemClicked()"]'),
    }

  }
  get samples() {

    return {
      'forty zh': '一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十一二三四五六七八九十',
      'forty eng': 'abcdefghijabcdefghijabcdefghijabcdefghij',
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/categories?locale=en`
  
  }

}

module.exports = CategoryListPage 
