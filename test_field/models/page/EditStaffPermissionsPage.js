let Page = require('../../framework/models/Page.js')

class EditStaffPermissionsPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="StaffEditController"]'),
      'access form': this.by.css('#staffForm'),
      'switch tab button': this.by.css('a[ng-click*="currentTab ="]'),
      'checkbox group': this.by.css('div.form-group'),
      'generate button': this.by.css('button[ng-click="generateToken()"]'),
      'control-label checkbox': this.by.css('label[class="control-label"]'),
      'basic setting': this.by.css('span[ng-if="ability.code !== \'basic_settings\'"]'),

      'give full access checkbox': this.by.css('[ng-click="staff.has_full_access = !staff.has_full_access"]'),
      'unchecked give full access checkbox': this.by.css('[ng-click="staff.has_full_access = !staff.has_full_access"]:not([checked])'),
      'order permission checkbox': this.by.css('div:nth-child(1) > div:nth-child(1) > div > div:nth-child(1) .checkbox label.control-label'),
      'order setting permission checkbox': this.by.css('div:nth-child(10) > div:nth-child(7) input'),
      'payment option permission checkbox': this.by.css('div:nth-child(10) > div:nth-child(5) input'),
      'staff setting label': this.by.css('#ability-list > div:nth-child(10) > div:nth-child(11) label'),
      'staff setting checkbox': this.by.css('#ability-list > div:nth-child(10) > div:nth-child(11) input'),
      'member points checkbox': this.by.css('div:nth-child(3)>div:nth-child(6) .checkbox label input'),
      'view':this.by.css('label[class="ng-binding"]'),
      'broadcast permission checkbox':this.by.css('div:nth-child(3) > div:nth-child(3) > .form-group > .checkbox > label'),
      'update button': this.by.css('.btn.btn-primary:not(.ng-hide)'),
      'unchecked give full access checkbox': this.by.css('[ng-click="staff.has_full_access = !staff.has_full_access"]:not([checked])'),
      // message tab
      'message checkbox': this.by.css('div[ng-repeat="ability in mcAbility"] .control-label.ng-binding'),
    }

  }

}

module.exports = EditStaffPermissionsPage
