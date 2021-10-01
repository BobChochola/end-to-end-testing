let Page = require('../../framework/models/Page.js')

class  BundlePricingEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsFormController"]'),
      'name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'promotion value field': this.by.css('input#discountCriteriaCondition[name*="condition_value"]'),
      'discounted price field': this.by.css('input[ng-model="conditionBenefitTier.discounted_price"]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'search product button': this.by.css('div[ng-click="showProductPicker()"]'),
      'select product popup': this.by.css('div.dialogbox.ng-scope'),
      'search field': this.by.css('[ng-model="searchProductKeyword"]'),
      'checkbox of product list': this.by.css('span[ng-if="!showSelectedProductList && !selectOne"] label'),
      'popup confirm button': this.by.css('button[ng-click="save()"]'),
      'row of selected product': this.by.css('tr[ng-repeat="product in products"]'),
      'never expires checkbox': this.by.css('input[ng-model="form.promotion_end_date_unlimited"]'),
      'end date field': this.by.css('input[name="endOpened"]'),
      'countinue to button': this.by.css('a[ng-click="nextSection()"]'),
      'preview button': this .by.css('a[ng-click="preview()"]'),
      'target': this.by.css('input[name="requires_membership"]'),
      'promotion name': this.by.css('p:not(.ng-hide)[ng-repeat^="languageKey"]'),
      'promotion limitations start date': this.by.css('div[ng-if^="promotion.start_at"]'),
      'promotion limitations end date': this.by.css('div[ng-if^="promotion.start_at"] span:not(.ng-hide)'),
      'target group': this.by.css('span[ng-if*="form.targetGroupType"]'),
      'discount summary': this.by.css('[ng-if="state.isPreview"] div[ng-bind-html="getDiscountSummaries()"]'),
      'payment options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(2) > div.col-md-10'),
      'delivery options':this.by.css('promotion-form-preview div:nth-child(7) > div:nth-child(3) > div.col-md-10'),
      'confirm button': this.by.css('button[type="submit"]'),
    }

  }

}

module.exports = BundlePricingEditPage