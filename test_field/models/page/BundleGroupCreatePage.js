let Page = require('../../framework/models/Page.js')

class BundleGroupCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsFormController"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'confirm button': this.by.css('button[type="submit"]'),

      //general information
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'stackable on checkbox': this.by.css('label[uib-tooltip-html*="bundle_group"] input[value="1"]'),
      'stackable off checkbox': this.by.css('label[uib-tooltip-html*="bundle_group"] input[value="0"]'),
      'group a field': this.by.css('div.input-group input[ng-model*="red"]'),
      'group b field': this.by.css('div.input-group input[ng-model*="green"]'),
      'price field': this.by.css('input[name="discounted_price"]'),
      'discount summary': this.by.css('div[ng-bind-html="getDiscountSummaries()"]'),
      'group a tab': this.by.css('a[ng-click="changeTab(\'red\')"]'),
      'group b tab': this.by.css('a[ng-click="changeTab(\'green\')"]'),
      'select product button': this.by.css('a[ng-click="openProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'search field': this.by.css('div[class="product-searcher"] input[ng-model="searchInput"]'),
      'tag search filed': this.by.css('input[placeholder*="Input product tag(s)"]'),
      'category search field': this.by.css('span.category-filter-placeholder'),
      'select all checkbox': this.by.css('input[ng-click="toggleAllProducts()"]'),
      'product list': this.by.css('div[class="product-box"] div[class="thumbnail"]'),
      'checkbox of product list': this.by.css('div[class="product-box"] input[type="checkbox"]'),
      'close popover button': this.by.css('div[class="modal-content"] span[ng-click="cancel()"]'),
      'popup confirm button': this.by.css('button[ng-click="save()"]'),
      'row of selected product': this.by.css('tr[ng-repeat="product in products"]'),
      'selected products': this.by.css('div[items="products"]'),
      'green dot': this.by.css('span[class*="bundle-group-green"]'),
      'red dot': this.by.css('span[class*="bundle-group-red"]'),
      'search product dropdown': this.by.css('div.input-group-btn .dropdown-toggle'),
      'search product dropdown option': this.by.css('div.input-group-btn li'),
      'category label': this.by.css('.category-item'),
      'search button': this.by.css('.input-group-btn button[type="submit"]'),
      'conflict product error message': this.by.css('[ng-if*="hasConflictProductsTag"]'),
      'conflict product': this.by.css('.conflict_product'),

      //set target group
      'target group checkbox': this.by.css('input[name="targetGroupType"]'),
      'membership tier checkbox': this.by.css('input[value="specific_tiers"]'),
      'membership dropdown': this.by.css('div[ng-if*="specific_tiers"] a[class*="sb-toggle"]'),
      'membership dropdown option': this.by.css('div[ng-if*="specific_tiers"] li'),

      //set benefits & criteria
      'start date field': this.by.css('input[name="startOpened"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'date picker': this.by.css('button[id*="datepicker"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled]) span:not(.text-muted)'),
      'next button': this.by.css('[ng-click="move(1)"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'today button': this.by.css('.dropdown-menu.datetime-picker-dropdown button[ng-click="select(\'today\')"]'),
      'decrement hours button': this.by.css('a[ng-click="decrementHours()"]'),

      //set vailed payment & devivery opyions
      'payment options':this.by.css('div[ng-repeat*="form.blacklistOptions.payments"]'),
      'delivery options':this.by.css('div[ng-repeat*="form.blacklistOptions.delivery_options"]'),
      'preview button': this .by.css('a[ng-click="preview()"]'),

      //preview
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'member tier target': this.by.css('span[ng-repeat*="selectedMembershipTiers"]'),
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
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genYear(1)}/01/01`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/bundle_group/new?locale=en`

  }

}

module.exports = BundleGroupCreatePage
