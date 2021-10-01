let Page = require('../../framework/models/Page.js')

class PageBuilderPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PagesEditorController"]'),
      'skip the guide button': this.by.css('a[ng-click="dismissTutorial()"]'),
      'user guide next step button': this.by.css('button[ng-click="nextScene()"]'),
      'user guide done button': this.by.css('[ng-click="dismissTutorial()"]'),
      'edit category button': this.by.css('[data-target="products"]'),
      'menu button': this.by.css('div[ng-click="toggleToolbar()"]'),
      'menu': this.by.css('div[id="side-toolbar"]'),
      'side menu': this.by.css('.item-panel-container'),
      'side menu switch tab button': this.by.css('[select="setSection(section.key)"]'),
      'side menu checkbox': this.by.css('.item-panel-container label'),
      'category checkbox': this.by.css('.angular-ui-tree-node'),
      'ok button': this.by.css('[ng-click="action.saveAndClose()"]:not([disabled="disbaled"])'),
      'save button': this.by.css('.save-button'),
      'video item': this.by.css('#page_form:not(.ng-valid-video-url) [data-target="video"]'),
      'view page button': this.by.css('[ng-click="openPage()"]'),
      'return to admin button': this.by.css('a[data-e2e-id="nav_top_nav"]'),
      'page content': this.by.css('.content-wrapper'),
      'view page button': this.by.css('[ng-click="openPage()"]'),
      'page setting button': this.by.css('li[ng-repeat="key in options"]'),
      'english title field': this.by.css('input[name="page_title_translations_en"]'),
      'h1 button': this.by.css('page-draggable-component > [data-toolt="H1 Tag"]'),
      'text button':this.by.css('page-draggable-component > [data-toolt="Text"]'),
      'text editor':this.by.css('div[class^="cke_wysiwyg_div"]'),
      'image button':this.by.css('page-draggable-component > [data-toolt="Image"]'),
      'image upload zone':this.by.css('div[class="dropzone ng-binding"]'),
      'default image':this.by.css('[data-target="image"] .content-wrapper .drag-mask'),
      'top location': this.by.css('.page-row-item-border.top .bs-container > page-droppable-zone'),
      'bottom location': this.by.css('.page-row-item-wrapper:last-child .bs-container [position="bottom"] [ng-drop="true"]'),
      'h1 tag': this.by.css("div[ng-switch-when=\'h1_tag\'] h1"),
      'ckeditor limit': this.by.css('#ckeditor-limit'),
      'save and close button': this.by.css("button[ng-click=\'action.saveAndClose()\']"),
      'add photo button': this.by.css('.btn[ng-click^="selectImage"]'),
      'photo selector': this.by.css('input#input-page-image'),
      'uploaded photo item': this.by.css('.PageEditorImageDialog-mediaImg'),
      'uploaded photo item more button': this.by.css('[data-toggle="collapse"].fa-angle-down'),
      'delete photo item button': this.by.css('[ng-click="deleteAtIndex($index)"]'),
      'image alt field': this.by.css('input[name="image_alt"]'),
      'loading icon': this.by.css('.loader-img:not(.ng-hide)'),

      'text with title button': this.by.css('page-draggable-component > div[data-toolt="Text with Title"]'),
      'text title': this.by.css('[data-target="title"]'),
      'text description': this.by.css('[data-target="description"]'),
      
      'single product button': this.by.css('page-draggable-component > [data-toolt="Single Product"]'),
      'single product': this.by.css('div[class="product-item"]'),
      'empty single product': this.by.css('[ng-switch-when="product"] .page-item-content.unavailable-product'),
      'empty text editor': this.by.css('div.page-item-content.item-title.ng-binding.ng-scope.empty'),
      'empty image': this.by.css('div.content-wrapper.empty-mask'),
      'empty h1': this.by.css('div.page-item-content.item-h1-tag.ng-binding.ng-scope.empty'),
      'popup': this.by.css('.modal-dialog'),
      'popup search field': this.by.css('.modal-dialog [ng-model="searchInput"]'),
      'popup product': this.by.css('[ng-click="addProduct(product,$index)"]'),
      'popup save button': this.by.css('[ng-click="save()"]'),

      'product category button': this.by.css('div[ng-drag=\'isComponentDraggable(componentKey)\'][data-toolt=\'Category\']'),
      'product category item': this.by.css('div[ng-repeat="product in products"]'),
      'checkbox of product list': this.by.css('div[class="thumbnail"]'),
    }

  }

  get samples() {
    return {
      'youtube video url': 'https://www.youtube.com/watch?v=Dbcaze1Lpbo',
      'photo': `${this.props.sample.sampleImagesPath()}/4.jpg`,
    }
  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/pages/advanced/new?template=${this.templateId}&locale=en`

  }

}

module.exports = PageBuilderPage

