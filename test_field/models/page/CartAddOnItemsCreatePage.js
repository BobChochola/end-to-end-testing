let Page = require('../../framework/models/Page.js')

class CartAddOnItemsCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="AddonPromotionsFormController"]'),
      'english name field': this.by.css('input[name="promotion_title_translations_en"]'),
      'valid date field': this.by.css('input[name="startOpened"]'),
      'invalid date field': this.by.css('input[name="endOpened"]'),
      'select add on items button': this.by.css('button[ng-click="openSelectDiscountableProductModal()"]'),
      'search add on items field': this.by.css('input[ng-model="searchInput"]'),
      'search button': this.by.css('form[role="search"] button[type="submit"]'),
      'add on items name': this.by.css('div[ng-repeat="product in results"] div.word-break-wrap'),
      'add on items checkbox': this.by.css('div[ng-repeat="product in results"] input[type="checkbox"]'),
      'add on items save button': this.by.css('.modal-footer button[ng-click="save()"]'),
      'add on items price field': this.by.css('input[ng-model="extend_promotion.discounted_price"]'),
      'unlimited quantity': this.by.css('input[type="checkbox"]'),
      'save button': this.by.css('div.box-section [type="submit"]'),
      'unlimited checkbox': this.by.css('[ng-model="extend_promotion.unlimited_quantity"]'),
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
      'start full time': `${this.props.sample.genDate()}` + " " + `${this.props.sample.genPeriodHour() + ":00"}` + " " +`${this.props.sample.genTwelveHourPeriod()}`,
      'end full time': `${this.props.sample.genDate(2)}` + " " + `${this.props.sample.genPeriodHour() + ":00"}` + " " + `${this.props.sample.genTwelveHourPeriod()}`,
      'date': `${this.props.sample.genDate()}`,
      'the day after tomorrow date': `${this.props.sample.genDate(2)}`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/promotions/cart_addon_items/new?locate=en`

  }

}

module.exports = CartAddOnItemsCreatePage
