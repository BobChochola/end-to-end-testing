let Page = require('../../framework/models/Page.js')

class ExpressCheckoutBuilderPage extends Page {

  get elements() {
    return {
      'id': this.by.css('div[ng-controller="PagesEditorController"]'),
      'skip the guide button': this.by.css('a[ng-click="dismissTutorial()"]'),
      'product picker': this.by.css('div.product-picker-modal'),
      'search field': this.by.css('input[ng-model="searchInput"]'),
      'search button': this.by.css('div.product-picker-modal button[type="submit"]'),
      'product of product list': this.by.css('[ng-repeat="product in results track by product._id"]'),
      'popup save button': this.by.css('div[class="modal-dialog"] button[ng-click="save()"]'),
      'preview button': this.by.css('div[ng-click="openPreview();"]'),
      'view page button': this.by.css('.footer-menu-container [ng-click^="openPage()"]'),
      'side menu button': this.by.css('#btn-side-menu-toggle'),
      'page seo button': this.by.css('ul.section-options li'),
      'page en title field': this.by.css('[data-field-name="Page Name (English)"] input'),
      'close side menu': this.by.css('#conten_left_mask'),
      'save page button': this.by.css('.footer-menu-container button[ng-click="checkProductStatus()"]'),
      'menu button': this.by.css('div[ng-click="toggleToolbar()"]'),
      'user guide pop up': this.by.css('div[class="modal-dialog"]'),
      'return to admin panel page': this.by.css('[data-e2e-id="nav_top_nav"]'),
      'page title': this.by.css('ul[class="section-options"] li'),
      'page title field': this.by.css('input[name="page_title_translations_en"]'),
      'click to edit image elements': this.by.css('.page-layout-item-wrapper'),
      'edit item panel bar': this.by.css('.item-panel-container'),
      'add photo button': this.by.css('.btn[ng-click^="selectImage"]'),
      'photo selector': this.by.css('input#input-page-image'),
      'owl carousel': this.by.css('.owl-controls'),
      'settings tab': this.by.css('.tab-settings'),
      'show title checkbox': this.by.css('[name="item_hide_title"]'),
      'show description checkbox': this.by.css('[name="item_hide_description"]'),
      'show full-width image checkbox': this.by.css('[name="item_full_width"]'),
      'ok button': this.by.css('[ng-click^="action.saveAndClose"]'),
      'title of photo': this.by.css('div.item-title'),
      'description of photo': this.by.css('div.item-description'),
      'full-width image': this.by.css('.full-width'),
      'uploaded photo item': this.by.css('.PageEditorImageDialog-mediaImg'),
      'image alt field': this.by.css('input[name="image_alt"]'),
      'product info': this.by.css('.product-info'),
      'close side menu': this.by.css('div[class="body content rows scroll-y"]'),
      'instagram block': this.by.css('page-item-instagram > div > div'),
      'image button':this.by.css('div[ng-drag="isComponentDraggable(componentKey)"][data-toolt="Image"] i'),
      'image upload zone':this.by.css('div[class="dropzone ng-binding"]'),
      'top location': this.by.css('.page-row-item-border.top .bs-container'),
    }
  }

  get url() {
    return `${this.props.baseURL}/admin/${this.props.account.handle}/express_checkout_pages/new?locale=en`
  }

  get samples() {
    return {
      'photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'another photo': `${this.props.sample.sampleImagesPath()}/3.jpg`
    }
  }
}

module.exports = ExpressCheckoutBuilderPage