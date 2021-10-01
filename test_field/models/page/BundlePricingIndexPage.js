let Page = require('../../framework/models/Page.js')

class BundlePricingIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsController"]'),
      'add promotion dropdown': this.by.css('a.btn.btn-primary.dropdown-toggle.bundle-pricing-dropdown-buttom.ng-binding'),
      'add promotion dropdown option': this.by.css('ul.dropdown-menu.dropdown-menu-right.bundle-pricing-dropdown-list li'),
      'alert': this.by.css('.alert'),
      'tab': this.by.css('li[ng-repeat*="filterScopes"]'),
      'search field': this.by.css('input[ng-model="filter.title"]'),
      'row of select checkbox list': this.by.css('.bulk-edit-checkbox-wrapper input[ng-change="syncBulkSelectedIds(promotion._id)"]'),
      'select all checkbox': this.by.css('input[ng-click="bulkSelectAll()"]'),
      'bulk actions dropdown': this.by.css('span[class="pull-right dropdown"] button.btn.btn-default'),
      'publish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=publish]'),
      'unpublish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=unpublish]'),
      'delete': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=delete]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]:not([disabled])'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'apply filter label': this.by.css('div.applied-filter'),
      'unpublished item': this.by.css('tr.ng-scope.text-unpublished'),
      'row of promotions': this.by.css('tr[ng-repeat="promotion in promotions"]'),
      'promotions': this.by.css('tbody[ng-model="promotions"]'),
      
      'bundle price usage record': this.by.css('tr[ng-repeat="promotion in promotions"] .bulk-edit-button-box a[href$="history"]'),
      'bundle price edit': this.by.css('tr[ng-repeat="promotion in promotions"] .bulk-edit-button-box a[href$="edit"]'),
      'bundle price edit dropdown': this.by.css('span[ng-if="showPromotionPageLink(promotion)"] button[uib-dropdown-toggle]'),
      'bundle price edit dropdown option': this.by.css('ul[uib-dropdown-menu][class="edit-promotion-dropdown dropdown-menu"] a[tabindex="-1"]'),
      'bundle list': this.by.css('tbody[ng-model="promotions"]'),
      'go to page button': this.by.css('a[ng-if="showPromotionPageLink(promotion)"]'),
      //mobile
      'mobile bulk actions dropdown': this.by.css('button[class="btn btn-default inline-block z-index ng-binding dropdown-toggle"]'),
      'mobile delete': this.by.css('div.pull-left.visible-xs.visible-mobile-device > span > ul > li:nth-child(3)'),
      'mobile row of select checkbox list': this.by.css('td.bulk-edit-button-box > span.mobile-checkbox-wrapper.hide > input'),
    }

  }

  get samples() {

    return {
      'start date': `${this.props.sample.genDate()}`,
      'end date': `${this.props.sample.genDate(2)}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/bundle_pricing?locale=en`

  }

}

module.exports = BundlePricingIndexPage