let Page = require('../../framework/models/Page.js')

class FreeShippingCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsFormController"]'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'confirm button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('.alert'),
      'selected product error alert': this.by.css('.promotion-section .alert:not(.ng-hide)'),
      'selected product': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Selected Products"]'),

      //General Information > Promotion Name
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),

      // Discount Summary
      'general discount summary': this.by.css('div.discount-summary-container'),

      //General Information > Set Purchase Condition
      'subtotal condition checkbox': this.by.css('input[value="discounted_subtotal"]'),
      'selected products condition checkbox': this.by.css('input[value="discounted_products"]'),
      'selected categories condition checkbox': this.by.css('input[value="discounted_categories"]'),
      'condition type dropdown': this.by.css('selectbox[options="conditionTypeOptions"]'),
      'minimum amount': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Minimum Amount"]'),
      'minimum items': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Minimum items"]'),
      'discount percent': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Discount %"]'),
      'discount amount': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Discount amount"]'),

      //General Information > Set Event(s) and Condition(s)
      'promotion condition field': this.by.css('input[id="discountCriteriaCondition"]'),
      'add tier button': this.by.css('a[ng-click="form.conditionBenefitTiers.push({})"]'),

      //General Information > Select Products Eligible for Promotion
      'search field': this.by.css('[ng-model="searchProductKeyword"]'),
      'search button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'select all checkbox': this.by.css('label[ng-show="showSelectInPageButton"]'),
      'popup search field': this.by.css('.modal-dialog input[ng-model="searchInput"]'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"] label'),
      'popup confirm button': this.by.css('button[ng-click="save()"]'),
      'row of selected product': this.by.css('tr[ng-repeat="product in products"]'),
      'list of popup product': this.by.css('div[class="modal-body"] div[class="thumbnail"]'),
      'selected products': this.by.css('div[items="products"]'),
      'search dropdown': this.by.css('div[class="input-group"] div[class="sb-container"]'),
      'search by tag': this.by.css('div[class="input-group"] a[title="Search by Product Tags"]'),
      'search by categories': this.by.css('div[class="input-group"] [title="Search by Categories"]'),
      'category dropdown': this.by.css('span.category-filter-placeholder'),
      'category dropdown option': this.by.css('li.category-item'),
      'select excluded product': this.by.css('.exclude-prodcuts-btn-section [ng-click="showProductPicker()"]'),

      //Set Target Group
      'target group checkbox': this.by.css('input[name="targetGroupType"]'),
      'membership dropdown': this.by.css('div[ng-if*="specific_tiers"] a[class*="sb-toggle"]'),
      'membership dropdown option': this.by.css('div[ng-if*="specific_tiers"] a.sb-item-handle'),
      'membership tier checkbox': this.by.css('input[value="specific_tiers"]'),
      'once checkbox': this.by.css('[ng-checked="promotion.user_max_use_count === 1 && !promotion.first_purchase_only"]'),
      'select membership checkbox': this.by.css('input[ng-checked="vm.contains(vm.values, option[vm.idKey])"]'),
      'membership list': this.by.css('[ng-if*="specific_tiers"] div:nth-child(2) table[class="table table-condensed"]'),

      //Set Benefits & Criteria
      'apply method checkbox': this.by.css('input[name="couponApplyType"]'),
      'coupon code field': this.by.css('input[name="coupon_code"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'payment options checkbox': this.by.css('[ng-repeat="payment in form.blacklistOptions.payments"] label'),
      'delivery options checkbox': this.by.css('[ng-repeat="delivery in form.blacklistOptions.delivery_options"] label'),
      'start date field': this.by.css('input[name="startOpened"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'unlimited checkbox': this.by.css('input[ng-model="form.max_use_count_unlimited"]'),
      'limited field': this.by.css('[name="max_use_count"]'),
      'date picker button': this.by.css('button[id*="datepicker"]'),
      'next period button': this.by.css('table[aria-labelledby*="datepicker"] button.pull-right'),

      //Set Valid Payment & Delivery Options
      'preview button': this .by.css('a[ng-click="preview()"]'),

      //preview
      'target': this.by.css('input[name="requires_membership"]'),
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'coupon code': this.by.css('p[ng-if*="form.code"]'),
      'promotion limitation': this.by.css('div[ng-if="form.for_affiliate_campaign"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'total usage limit': this.by.css('p[ng-if*="promotion.max_use_count"]'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'member tier target': this.by.css('span[ng-repeat*="selectedMembershipTiers"]'),
      'number of target group': this.by.css('[class*="form-group"]:nth-child(3) [ng-if*="form.targetGroupType"]'),
      'number of target customer': this.by.css('[class*="form-group"]:nth-child(4) [ng-if*="form.targetGroupType"]'),
      'discount summary': this.by.css('[ng-if="state.isPreview"] div[ng-bind-html="getDiscountSummaries()"]'),
      'limit per member': this.by.css('span[ng-if*="user_max_use_count"]'),
      'payment options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(2) > div.col-md-10'),
      'delivery options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(3) > div.col-md-10'),
      'selected product list': this.by.css('div[class="form-products-picker-container ng-scope read-only"]'),
      'confirm button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('.alert'),
      'selected product error alert': this.by.css('.promotion-section .alert:not(.ng-hide)'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'conflict product error message': this.by.css('[ng-if="showDiscountedCategoryProduct()"] [ng-show*="conflict_product_ids"]'),
      'conflict product': this.by.css('.conflict_product'),
    }

  }

  get samples() {

    return {
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genDate(2)}`,
      'coupon code': `${this.props.sample.genStoreName()}`,
      'next year january first': `${this.props.sample.genYear(1)}/01/01`,
      'next year february first': `${this.props.sample.genYear(1)}/02/01`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/free_shipping/new?locale=en`

  }

}

module.exports = FreeShippingCreatePage