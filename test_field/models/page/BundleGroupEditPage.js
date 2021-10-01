let Page = require('../../framework/models/Page.js')

class BundleGroupEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsFormController"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'confirm button': this.by.css('button[type="submit"]'),

      //general information
      'stackable off checkbox': this.by.css('label[uib-tooltip-html*="bundle_group"] input[value="0"]'),
      'group b tab': this.by.css('a[ng-click="changeTab(\'green\')"]'),
      'row of product delete button': this.by.css('tr[ng-repeat="product in products"] a[ng-click="removeProduct(product)"]'),

      //set benefits & criteria
      'start date field': this.by.css('input[name="startOpened"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'decrement hours button': this.by.css('[ng-click="decrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled]) span:not(.text-muted)'),
      'next month button': this.by.css('[ng-click="move(1)"]'),

      //set vailed payment & devivery opyions
      'preview button': this .by.css('a[ng-click="preview()"]'),

      //preview
      'stackable pricing': this.by.css('p[ng-if="showDiscountSummary"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'preview button': this .by.css('a[ng-click="preview()"]'),
      
      //general information
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'group a field': this.by.css('div.input-group input[ng-model*="red"]'),
      'group b field': this.by.css('div.input-group input[ng-model*="green"]'),
      'price field': this.by.css('input[name="discounted_price"]'),
      'discount summary': this.by.css('div[ng-bind-html="getDiscountSummaries()"]'),
      'group a tab': this.by.css('a[ng-click="changeTab(\'red\')"]'),
      'group b tab': this.by.css('a[ng-click="changeTab(\'green\')"]'),
      'row of selected product': this.by.css('[ng-repeat="product in products"]'),
      'selected products': this.by.css('div[items="products"]'),

      //preview
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'stackable pricing': this.by.css('p[ng-if="showDiscountSummary"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'preview group a tab': this.by.css('bundle-group-products-grid.preview li[ng-class*="red"]'),
      'preview group b tab': this.by.css('bundle-group-products-grid.preview li[ng-class*="green"]'),
      'preview selected products': this.by.css('.form-group.list-selected-product-container.ng-scope'),
      'confirm button': this.by.css('button[type="submit"]'),
    }

  }

  get samples() {

    return {
      'preset start time': `${this.props.sample.genMonth()<12?this.props.sample.genYear():this.props.sample.genYear(1)}/${this.props.sample.genMonth(1)}/01 ${this.props.sample.genHour()}:00`,
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genYear(1)}/01/01`,
    }

  }

}

module.exports = BundleGroupEditPage