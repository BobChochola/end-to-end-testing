let Page = require('../../framework/models/Page.js')

class PromotionEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div.promotion-section.general_info.in.collapse'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'language dropdown': this.by.css('a[id="current-language-name"]'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'preview button': this .by.css('a[ng-click="preview()"]'),
      'confirm button': this.by.css('button[type="submit"]'),

      // Promotion Name
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),

      // Discount Summary
      'general discount summary': this.by.css('div.discount-summary-container'),

      // Set Purchase Condition
      'purchase condition dropdown': this.by.css('div[ng-hide*="set_criteria"] selectbox'),
      'subtotal condition checkbox': this.by.css('input[value="discounted_subtotal"]'),
      'selected products condition checkbox': this.by.css('input[value="discounted_products"]'),
      'selected category condition checkbox': this.by.css('input[value="discounted_categories"]'),
      'condition type dropdown': this.by.css('selectbox[options="conditionTypeOptions"]'),
      'condition type dropdown option': this.by.css('selectbox[options="conditionTypeOptions"] li'),
      'minimum amount': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Minimum Amount"]'),
      'minimum items': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Minimum items"]'),

      // Set Benefit Type
      'benefit type dropdown': this.by.css('selectbox[options="promotionTypes"]'),
      'benefit applies dropdown': this.by.css('selectbox[options="promotionOns"]'),
      'discount percent': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Discount %"]'),
      'discount amount': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Discount amount"]'),
      'free gift': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="Free Gift"]'),
      'all product': this.by.css('ul:not(.ng-hide)[ng-class*="true"] a[title="All Products"]'),
      'selected product': this.by.css('a[title="Selected Products"]'),
      'selected category': this.by.css('a[title="Selected Categories"]'),

      // Set Event(s) and Condition(s)
      'promotion value field': this.by.css('input[ng-model="conditionBenefitTier.discount_value"]'),
      'promotion condition field': this.by.css('input[id="discountCriteriaCondition"]'),
      'add tier button': this.by.css('a[ng-click="form.conditionBenefitTiers.push({})"]'),
      'search field': this.by.css('[ng-model="searchProductKeyword"]'),
      'search button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'popup search field': this.by.css('.modal-dialog input[ng-model="searchInput"]'),
      'product of popover list': this.by.css('.thumbnail'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"]'),
      'popup confirm button': this.by.css('button[ng-click="save()"]'),
      'category checkbox': this.by.css('label[class*="checkbox-inline"]'),
      'select excluded product': this.by.css('.exclude-prodcuts-btn-section [ng-click="showProductPicker()"]'),
      'select button': this.by.css('button[ng-click="openSelectDiscountableProductModal()"]'),
      'search free gift field': this.by.css('input[ng-model="searchInput"]'),
      'search free gift button': this.by.css('button[type="submit"]'),
      'free gift quantity field': this.by.css('input[name="discount_value0"]'),
      'row free gift': this.by.css('div[class="row discountable-product-list"]'),
      'selected product error alert': this.by.css('.promotion-section .alert:not(.ng-hide)'),
      'conflict product error message': this.by.css('[ng-if="showDiscountedCategoryProduct()"] [ng-show*="conflict_product_ids"]'),
      'conflict product': this.by.css('.conflict_product'),
      'search dropdown': this.by.css('div[class="input-group"] div[class="sb-container"]'),
      'search by tag': this.by.css('div[class="input-group"] a[title="Search by Product Tags"]'),
      'search by categories': this.by.css('div[class="input-group"] [title="Search by Categories"]'),
      'category dropdown': this.by.css('span.category-filter-placeholder'),
      'category dropdown option': this.by.css('li.category-item'),
      'row of selected product': this.by.css('tr[ng-repeat="product in products"]'),

      // Select Target Group
      'members checkbox': this.by.css('input[value="1"][name="requires_membership"]'),
      'membership dropdown': this.by.css('div[ng-if*="specific_tiers"] a[class*="sb-toggle"]'),
      'membership dropdown option': this.by.css('div[ng-if*="specific_tiers"] a.sb-item-handle'),
      'membership tier checkbox': this.by.css('input[value="specific_tiers"]'),
      'select membership checkbox': this.by.css('input[ng-checked="vm.contains(vm.values, option[vm.idKey])"]'),
      'membership list': this.by.css('[ng-if*="specific_tiers"] div:nth-child(2) table[class="table table-condensed"]'),
      'once checkbox': this.by.css('[ng-checked="promotion.user_max_use_count === 1 && !promotion.first_purchase_only"]'),

       // Set Benefits & Criteria
      'auto apply checkbox': this.by.css('input[ng-model="form.coupon_code_auto_apply"]'),
      'coupon code field': this.by.css('input[name="coupon_code"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'payment options checkbox': this.by.css('[ng-repeat="payment in form.blacklistOptions.payments"] label'),
      'delivery options checkbox': this.by.css('[ng-repeat="delivery in form.blacklistOptions.delivery_options"] label'),
      'start date field': this.by.css('input[name="startOpened"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'times of use field': this.by.css('input[name="max_use_count"]'),
      'unlimited checkbox': this.by.css('input[ng-model="form.max_use_count_unlimited"]'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'now button': this.by.css('button[class="btn btn-sm btn-link ng-binding"][ng-disabled="isDisabled(\'now\')"]'),
      'affiliate campaign only checkbox': this.by.css('input[ng-model="form.for_affiliate_campaign"]'),
      'date picker button': this.by.css('button[id*="datepicker"]'),
      'next period button': this.by.css('table[aria-labelledby*="datepicker"] button.pull-right'),

      // preview
      'target': this.by.css('input[name="requires_membership"]'),
      'target group list': this.by.css('promotion-form-preview > div > div:nth-child(3)'),
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'coupon code': this.by.css('p[ng-if*="form.code"]'),
      'promotion limitation': this.by.css('div[ng-if="form.for_affiliate_campaign"]'),
      'affilliate campaign checkbox': this.by.css('input[name="for_affiliate_campaign"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'total usage limit': this.by.css('p[ng-if*="promotion.max_use_count"]'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'member tier target': this.by.css('span[ng-repeat*="selectedMembershipTiers"]'),
      'number of target group': this.by.css('[class*="form-group"]:nth-child(3) [ng-if*="form.targetGroupType"]'),
      'number of target customer': this.by.css('[class*="form-group"]:nth-child(4) [ng-if*="form.targetGroupType"]'),

      'limit per member': this.by.css('span[ng-if*="user_max_use_count"]'),
      'selected category option': this.by.css('div.list-categories span[ng-repeat*="form.whitelisted_categories"]'),
      'discount summary': this.by.css('[ng-if="state.isPreview"] div[ng-bind-html="getDiscountSummaries()"]'),
      'payment options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(2) > div.col-md-10'),
      'delivery options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(3) > div.col-md-10'),
      'selected product list': this.by.css('div[class="form-products-picker-container ng-scope read-only"]'),
      'confirm button': this.by.css('button[type="submit"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'select button': this.by.css('button[ng-click="openSelectDiscountableProductModal()"]'),
      'search free gift field': this.by.css('input[ng-model="searchInput"]'),
      'search free gift button': this.by.css('button[type="submit"]'),
      'free gift quantity field': this.by.css('input[name="discount_value0"]'),
      'times of use field': this.by.css('input[name="max_use_count"]'),
      'unlimited checkbox': this.by.css('input[ng-model="form.max_use_count_unlimited"]'),
      'language dropdown': this.by.css('a[id="current-language-name"]'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'increment hours button': this.by.css('[ng-click="incrementHours()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'now button': this.by.css('button[class="btn btn-sm btn-link ng-binding"][ng-disabled="isDisabled(\'now\')"]'),
    }

  }

  get samples() {

    return {
      'start full time': `${this.props.sample.genDate()}` + " " + `${this.props.sample.genHour()+ ":00"}` + " " +`${this.props.sample.genTwelveHourPeriod()}`,
      'end full time': `${this.props.sample.genDate(1)}` + " " + `${this.props.sample.genHour() + ":00"}` + " " + `${this.props.sample.genTwelveHourPeriod()}`,
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genDate(1)}`,
      'coupon code': `${this.props.sample.genStoreName()}`,
      'next year january first': `${this.props.sample.genYear(1)}/01/01`,
      'next year february first': `${this.props.sample.genYear(1)}/02/01`,
    }

  }

}

module.exports = PromotionEditPage
