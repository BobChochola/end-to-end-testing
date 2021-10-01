let Page = require('../../framework/models/Page.js')

class PromotionIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsController"] [ng-model="promotions"]'),
      'row of promotions':this.by.css('tr[ng-repeat="promotion in promotions"]'),
      'alert': this.by.css('.alert'),
      'search field': this.by.css('input[ng-model="filter.title"]'),
      'row of select checkbox list': this.by.css('td.bulk-edit-checkbox-wrapper:not(hide) input[ng-change="syncBulkSelectedIds(promotion._id)"]'),
      'select all checkbox': this.by.css('input[ng-click="bulkSelectAll()"]'),
      'bulk actions dropdown': this.by.css('span[class="pull-right dropdown"] button.btn.btn-default'),
      'publish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=publish]'),
      'unpublish': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=unpublish]'),
      'delete': this.by.css('span[class="pull-right dropdown open"] li[ng-click*=delete]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]:not([disabled])'),
      'delete checkbox': this.by.css('input[ng-model="recheckboxDialog"]'),
      'apply filter label': this.by.css('div.applied-filter'),
      'unpublished item': this.by.css('tr.ng-scope.text-unpublished'),
      'published item': this.by.css('tr:not(.ng-hide)[ng-repeat=\"promotion in promotions\"]:not(.text-unpublished)'),
      'row of promotion list': this.by.css('tr:not(.ng-hide)[ng-repeat="promotion in promotions"]'),
      'row of promotion name': this.by.css('td[class*="word-break-wrap"]'),
      'row of discounted on': this.by.css('td[ng-if*="discount"]'),
      'row of valid period': this.by.css('div.table-responsive.table-promotions-discount > table > tbody > tr:nth-child(1) > td:nth-child(4)'),
      'row of apply to': this.by.css('tr:not(.ng-hide)[ng-repeat="promotion in promotions"] td:nth-child(5)'),
      'row of method': this.by.css('tr:not(.ng-hide)[ng-repeat="promotion in promotions"] td:nth-child(6)'),
      'row of edit button': this.by.css('a[ng-show*="create_update"]'),
      'edit dropdown': this.by.css('button.edit-btn'),
      'promotion option': this.by.css('.edit-promotion-dropdown a[href*="edit"]'),
      'next page button': this.by.css('[ng-click="selectPage(page + 1, $event)"]'),
      //mobile elements
      'mobile row of select checkbox list': this.by.css('div.table-responsive.table-promotions-discount > table > tbody > tr:nth-child(n) > td.bulk-edit-button-box > span > input'),
      'mobile bulk actions dropdown': this.by.css('button[uib-dropdown-toggle]'),
      "mobile bulk actions dropdown option": this.by.css('ul[uib-dropdown-menu] li'),
      'mobile unpublish': this.by.css('div.pull-left.visible-xs.visible-mobile-device > span > ul > li:nth-child(2)'),
      'promotion settings button': this.by.css('a[ng-click="openSettingPage()"]'),
    }

  }

  get samples() {
  
    return {
      'start full time': `${this.props.sample.genDate()}` + " " + `${this.props.sample.genHour()+ ":00"}` + " " +`${this.props.sample.genTwelveHourPeriod()}`,
      'end full time': `${this.props.sample.genDate(2)}` + " " + `${this.props.sample.genHour()+ ":00" }` + " " + `${this.props.sample.genTwelveHourPeriod()}`,
    }

  }

  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/discount?locale=en`
  
  }

}

module.exports = PromotionIndexPage 
