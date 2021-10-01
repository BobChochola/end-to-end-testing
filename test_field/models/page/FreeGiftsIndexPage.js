let Page = require('../../framework/models/Page.js')

class FreeGiftsIndexPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="GiftsController"] [items="gifts"]'),
      'add button': this.by.css('a[ng-click^="addGift"]'),
      'alert': this.by.css('.alert'),
      'row of free gift list': this.by.css('tr[ng-repeat="gift in gifts"]'),
      'row of free gift photo': this.by.css('td img'),
      'row of quantity list': this.by.css('tr[ng-repeat="gift in gifts"] td.bulk-edit-box-unit:nth-last-of-type(2)'),
      'row of status list': this.by.css('tr[ng-repeat="gift in gifts"] td.bulk-edit-box-unit:nth-last-of-type(3)'),
      'row of select checkbox list': this.by.css('.bulk-edit-checkbox-wrapper [ng-model^="bulk.selectedMap"]'),
      'bulk actions dropdown': this.by.css('table button.dropdown-toggle'),
      'delete': this.by.css('table ul.bulk-edit-dropdown li[ng-click*="removed"]'),
      'publish': this.by.css('table ul.bulk-edit-dropdown li[ng-click*="active"]'),
      'unpublish': this.by.css('table ul.bulk-edit-dropdown li[ng-click*="draft"]'),
      'confirmation popover': this.by.css('div[class="dialogbox ng-scope"]'),
      'confirm delete button': this.by.css('div[class="dialogbox ng-scope"] button.btn-danger[ng-click="confirm()"]'),
      'row of edit button': this.by.css('.bulk-edit-button-box a[href*="edit'),
      'delete checkbox': this.by.css('.recheckbox label'),
      'free gift table': this.by.css('[ng-model="gifts"]'),
      'loading icon': this.by.css('[ng-show="state.isBulkActionLoading == true"]:not(.ng-hide)'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/free_gifts?locale=en`

  }

  get samples() {

    return {
      'free gift photo': `${this.props.sample.sampleImagesPath()}/1.png`
    }

  }


}

module.exports = FreeGiftsIndexPage