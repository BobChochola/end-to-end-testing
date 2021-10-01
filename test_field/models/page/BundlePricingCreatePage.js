let Page = require('../../framework/models/Page.js')

class BundlePricingCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsFormController"]'),
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'promotion value field': this.by.css('input#discountCriteriaCondition[name*="condition_value"]'),
      'discounted price field': this.by.css('input[ng-model="conditionBenefitTier.discounted_price"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'search type dropdown': this.by.css('.hidden-xs [options="productFilterOptions"]'),
      'search type dropdown option': this.by.css('.hidden-xs [options="productFilterOptions"] li'),
      'search product button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'search field': this.by.css('[ng-model="searchProductKeyword"]'),
      'select all checkbox': this.by.css('label[ng-show="showSelectInPageButton"]'),
      'tag search filed': this.by.css('input[placeholder*="Input product tag(s)"]'),
      'category search field': this.by.css('span.category-filter-placeholder'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"] label'),
      'product of popover list': this.by.css('div[class="modal-body"] div[class="thumbnail"]'),
      'popup confirm button': this.by.css('button[ng-click="save()"]'),
      'row of selected product': this.by.css('tr[ng-repeat="product in products"]'),
      'selected products': this.by.css('div[items="products"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'start date field': this.by.css('input[name="startOpened"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'preview button': this .by.css('a[ng-click="preview()"]'),
      'target': this.by.css('input[name="requires_membership"]'),
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'target group list': this.by.css('promotion-form-preview > div > div:nth-child(3)'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'member tier target': this.by.css('span[ng-repeat*="selectedMembershipTiers"]'),
      'discount summary': this.by.css('[ng-if="state.isPreview"] div[ng-bind-html="getDiscountSummaries()"]'),
      'payment options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(2) > div.col-md-10'),
      'delivery options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(3) > div.col-md-10'),
      'confirm button': this.by.css('button[type="submit"]'),
      'add benefits': this.by.css('[ng-click="form.conditionBenefitTiers.push({})"]'),
      'select all checkbox': this.by.css('input[ng-click="toggleSelectAllProducts()"]'),
      'next button': this.by.css('a[ng-click="selectPage(page.number, $event)"]'),
      'target group checkbox': this.by.css('input[name="targetGroupType"]'),
      'membership tier checkbox': this.by.css('input[value="specific_tiers"]'),
      'membership dropdown': this.by.css('div[ng-if*="specific_tiers"] a'),
      'membership dropdown option': this.by.css('div[ng-if*="specific_tiers"] a.sb-item-handle'),
      'select membership checkbox': this.by.css('input[ng-checked="vm.contains(vm.values, option[vm.idKey])"]'),
      'membership list': this.by.css('[ng-if*="specific_tiers"] div:nth-child(2) table[class="table table-condensed"]'),
      'apply method checkbox': this.by.css('input[name="couponApplyType"]'),
      'delete selected button': this.by.css('.list-selected-product-container .btn-remove-selected-product'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'chosen month available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled]) span:not(.text-muted)'),
      'stackable off checkbox': this.by.css('div[class="bundle-stackable-options ng-scope"] input[value="0"]'),
      'last month button': this.by.css('[ng-click="move(-1)"]'),
      'next month button': this.by.css('[ng-click="move(1)"]'),
      'applicable category dropdown': this.by.css('[ng-bind-html="getFilterPlaceholder()"]'),
      'applicable category dropdown option': this.by.css('.category-item label'),
      'conflict product error message': this.by.css('[ng-if="showDiscountedCategoryProduct()"] [ng-show*="conflict_product_ids"]'),
      'conflict product': this.by.css('.conflict_product'),
    }

  }

  get samples() {

    return {
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genDate(2)}`,
      'alert message': 'Promotion start/end dates cannot be overlapped with an existing auto apply promotion on selected products. Please remove the products or change the promotion start/end dates to continue.',
      'preset start time': `${this.props.sample.genMonth() > 11 ? this.props.sample.genYear(1) : this.props.sample.genYear()}/${this.props.sample.genMonth(1)}/01 ${this.props.sample.genHour()}:00`,
      'over start time': `${this.props.sample.genYear()}/${this.props.sample.genMonth(-1)}/01 ${this.props.sample.genHour()}:00`,
      'over end time': `${this.props.sample.genDate()} ${this.props.sample.genHour()}:00`,
      'default start time': `${this.props.sample.genDate()} ${this.props.sample.genHour()}:00`,
      'tomorrow end time': `${this.props.sample.genDate(2)} 12:00`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/bundle_pricing/new?locale=en`

  }

}

module.exports = BundlePricingCreatePage