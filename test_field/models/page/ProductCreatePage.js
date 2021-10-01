let Page = require('../../framework/models/Page.js')

class ProductCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form#product_form'),
      'Language': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'ZH': this.by.css('li[ng-class*="zh-hant"]'),
      'breadcrumb': this.by.css('.page-heading h1 > span:not(.ng-hide):nth-child(5)'),
      'add-on items tab': this.by.linkText('Add-on items'),
      'tab': this.by.css('div.box-info li.ng-scope a'),
      'faq button': this.by.css('[ng-show^="currentTab"]:not(.ng-hide) [href*="support.shoplineapp.com"]'),
      'faq link': this.by.css('.fake-control-label a[href^="https://support.shoplineapp.com"]'),
      'add button': this.by.css('button.product-submit-btn'),
      'update button': this.by.css('button[type="submit"]:not([data-loading]'),
      'alert': this.by.css('.alert:not(.ng-hide)'),
      'error msg': this.by.css('.text-danger:not(.ng-hide)'),
      'popup': this.by.css('.modal-dialog'),
      'popup save button': this.by.css('[ng-click="save()"]'),
      //image
      'product photo selector': this.by.css('input[id="main_media"]'),
      'delete photo button': this.by.css('[ng-click^="deleteMediaClicked"]:not(.ng-hide)'),
      'from gallery button': this.by.css('.product-form-text button[ng-click="openImageGalleryPicker()"]'),
      'image gallery popover': this.by.css('.item-picker'),
      'row of image list': this.by.css('[ng-click="selectImage(image)"]'),
      'image select count': this.by.css('.selected-count'),
      'image selector': this.by.css('input[id="image_gallery"]'),
      'select button': this.by.css('button[ng-click="confirm()"]'),
      'product photo count': this.by.css('.box-header:not(.collapsed) > div.pull-right.ng-binding'),
      'alt button': this.by.css('[ng-click="addAlt(media)"]'),
      'alt field': this.by.css('input[ng-model="data.alt_translations[\'en\']"]'),
      'ok button': this.by.css('button[ng-click="confirm()"]'),
      //info
      'info tab': this.by.css('.product-nav-tabs li:nth-child(2)'),
      'english name field': this.by.css('input[name="product_name_en"]'),
      'chinese name field': this.by.css('input[name="product_name_zh-hant"]'),
      'product detail photo selector': this.by.css('input[id="detail_media"]'),
      'delete detail photo button': this.by.css('[ng-click^="deleteDetailMediaClicked"]:not(.ng-hide)'),
      'additional product photo collapse': this.by.css('[ng-click$=detail_media]'),
      'description field': this.by.css('[id="product_description"]'),
      'image button': this.by.css('[ng-click="insertImage()"]'),
      'image upload popover': this.by.css('[ng-if="supportImageGalleryP2"] .dialogbox'),
      'upload url button': this.by.css('[ng-click="openURLForm()"]'),
      'upload url popover': this.by.css('[uib-modal-animation-class="fade"] .dialogbox:not(.ng-hide)'),
      'url field': this.by.css('input[type="url"]'),
      'popup ok button': this.by.css('[ng-disabled="urlForm.$invalid || !urlForm.url.$modelValue"][ng-click="save()"]'),
      'upload image': this.by.css('[id="product-image-"]'),
      'confirm button': this.by.css('[ng-click="save()"]'),
      'description image': this.by.css('[id="product_description"] img'),
      'additional product alt button': this.by.css('[ng-repeat="media in product.detail_media track by media._id"] [ng-click="addAlt(media)"]'),
      'related product collapse': this.by.css('button[ng-click*="related_products"]'),
      'related product custom button': this.by.css('[ng-click="showProductPicker()"]'),
      'related product add button': this.by.css('[ng-click="addProduct(product,$index)"]'),
      'related product display none button': this.by.css('button[ng-click="hideRelatedProducts()"]'),
      //category
      'categories tab': this.by.css('.product-nav-tabs li:nth-child(3)'),
      'row of categories checkbox': this.by.css('[ng-click="categoryClicked(category)"]'),
      //quantity and pricing
      'quantity and pricing tab': this.by.css('.product-nav-tabs li:nth-child(4)'),
      'regular price field': this.by.css('input[ng-model="product.price.dollars"]'),
      'sale price field': this.by.css('input[ng-model="product.price_sale.dollars"]'),
      'cost field': this.by.css('input[ng-model="product.cost.dollars"]'),
      'member price field': this.by.css('[name="product_member_price"]'),
      'member tier price field': this.by.css('[ng-model="productPriceTiers[tier._id].dollars"]'),
      'hide price toggle': this.by.css('[data-field-name="Hide Price"] [ng-click="toggle()"]'),
      'unlimited quantity checkbox': this.by.css(':not(.ng-hide)[ng-show^="currentTab"] input[name="product_unlimited_quantity"]'),
      'sku field': this.by.css('input[name="product_sku"]'),
      'quantity field': this.by.css('input[name="product_quantity"]'),
      'additional consumption tax toggle on': this.by.css('.product-tax-title div[aria-checked="true"]'),
      'additional consumption tax toggle off': this.by.css('.product-tax-title div[aria-checked="false"]'),
      'additional consumption tax label': this.by.css('a[ng-show="products_taxable"] .label.product-tax-toggle'),
      'accept orders when out of stock label': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) [ng-if*="isOutOfStockOrderable"]'),
      'accept orders when out of stock checkbox': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) input[name="product_out_of_stock_orderable"]'),
      'accept orders when out of stock question mark': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) [target="faq-product-out-of-stock-order"]'),
      'accept orders when out of stock hint': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) [ng-if*="isOutOfStockOrderable"] div.popover'),
      //variation
      'variations tab': this.by.css('.product-nav-tabs li:nth-child(5)'),
      'variations toggle': this.by.css('[id="productForm-variations"] div[ng-click="toggle()"]'),
      'variations same price checkbox': this.by.css('input[name="product_same_price"]'),
      'add options field': this.by.css('input[placeholder="Add options"]'),
      'add variation button': this.by.css('a[ng-click="addFieldTitle()"]'),
      'variation dropdown': this.by.css('[ng-model^="form.fieldTitlesView"]'),
      'variation dropdown option': this.by.css('[ng-model^="form.fieldTitlesView"] option'),
      'custom variation field': this.by.css('[name^="custom_variation_title"]'),
      'row of variants': this.by.css('.modal-content div[ng-repeat="option in variantOptions"]'),
      'row of variation price field': this.by.css('input[ng-model="variation.price.dollars"]'),
      'row of variation sale price field': this.by.css('input[ng-model="variation.price_sale.dollars"]'),
      'row of variation member price field': this.by.css('input[ng-model="variation.member_price.dollars"]'),
      'row of variation member tier price field': this.by.css('.variation-row .tier-price-field input'),
      'row of 1st variation member tier price field': this.by.css('.variation-row .tier-price-field:nth-child(5) input'),
      'row of 2nd variation member tier price field': this.by.css('.variation-row .tier-price-field:nth-child(6) input'),
      'row of variation quantity field': this.by.css('input[ng-model="variation.quantity"]'),
      'row of variation photo button': this.by.css('div[ng-click="clickImage(variation)"]'),
      'row of variation photo': this.by.css('div[ng-click="clickImage(variation)"] img'),
      'upload photo popover': this.by.css('div.modal-content'),
      'main product photo': this.by.css('[id*=product-image][ng-click="chooseImage(media)"]'),
      'variants photo selector': this.by.css('input[id="variant_media"]'),
      'variants alt button': this.by.css('[ng-repeat="media in variationMedia"] [ng-click="addAlt(media)"]'),
      'variants photo save button': this.by.css('.modal-footer-variation [ng-click="save()"]'),
      'row of variation list': this.by.css('div[ng-repeat="variation in variations track by variation.trackKey"]'),
      'row of variation sku field': this.by.css('input[ng-model="variation.sku"]'),
      'row of variation weight field': this.by.css('[ng-model="variation.weight"]'),
      'tag field': this.by.xpath('//*[@id="productForm-settings"]/div[3]/div[2]/div/tags-input/div/div/input'),
      'row of excluded payment list': this.by.css('label[ng-class="{\'selected-strikethrough\':isPaymentSelected(payment.key)}"]'),
      'row of excluded delivery list': this.by.css('label[ng-class="{\'selected-strikethrough\':isDeliverySelected(delivery.key)}"]'),
      'excluded payment collapse': this.by.css('div[ng-click="isSectionCollapsed.payment_options = !isSectionCollapsed.payment_options"]'),
      'excluded delivery collapse': this.by.css('div[ng-click="isSectionCollapsed.delivery_options = !isSectionCollapsed.delivery_options"]'),
      'popup row of variants': this.by.css('.modal-content div[ng-repeat="option in variantOptions"]'),
      'popup error msg': this.by.css('.modal-dialog .alert'),
      'save variants products button': this.by.css('.ImageUploader-footer [ng-click="save()"]'),
      'variants products selector': this.by.css('input[ng-file-select="imageUpload($files, $index)"]'),
      'variants products selector button': this.by.css('div[ng-click="triggerImgUploader($index)"]'),
      'image variants selector popup': this.by.css('.ImageUploader'),
      'image variants count content': this.by.css('.ImageUploader-footer .ImageUploader-footer-content'),
      'image uploader alert': this.by.css('.ImageUploader .alert'),
      'variations label': this.by.css('.variantOptionForm label'),
      'customized shop variant selector checkbox': this.by.css('.variantOptionForm input[name="variant"]'),
      'edit image selector button': this.by.css('button[ng-click*="openImgUploader"]'),
      'cancel button': this.by.css('button[ng-click="cancel()"]'),
      'sku field': this.by.css('input[name="product_sku"]'),
      'remove row of variation tags': this.by.css('a.remove-button'),
      'variant list title': this.by.css('div.variations-table-title'),
      'variant list page button': this.by.css('[ng-click="selectPage(page.number, $event)"]'),
      //settings
      'settings tab': this.by.css('.product-nav-tabs li:nth-child(8)'),
      'subscription toggle': this.by.css('[ng-model="product.subscription_enabled"]'),
      'tag field': this.by.css('[ng-model="productTags"] input'),
      'row of excluded payment list': this.by.css('.payments label'),
      'row of excluded delivery list': this.by.css('.delivery label'),
      'excluded payment collapse': this.by.css('[ng-click$=payment_options]'),
      'excluded delivery collapse': this.by.css('[ng-click$=delivery_options]'),
      'preorder toggle': this.by.css('[data-field-name="Is Preorder"] [ng-click="toggle()"]'),
      'preorder note field': this.by.css('input[ng-model="product.preorder_note_translations[lang]"]'),
      'row of categories list': this.by.css('div[ng-model="isInCategory"] a[ng-click="categoryClicked(category)"]'),
      'weight field': this.by.css('input[name="product_weight"]'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'preset publish date field': this.by.css('input[name="schedule_publish_at"]'),
      'preset publish date button': this.by.css('span.input-group-addon.button'),
      'now button': this.by.css('button[class="btn btn-sm btn-link ng-binding"]'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'never expires checkbox': this.by.css('[name="available_end_time_unlimited"]'),
      'decrement hours button': this.by.css('[ng-disabled="noDecrementHours()"]'),
      'not applicable to order-level discount toggle': this.by.css('[ng-model="form.excludePromotionEnabled"]'),
      //product feed data
      'brand field': this.by.css('[ng-show^="currentTab"]:not(.ng-hide) [ng-model="product.brand"]'),
      'mpn field': this.by.css('[ng-show^="currentTab"]:not(.ng-hide) [ng-model="product.mpn"]'),
      'mpn field with variations': this.by.css('input[ng-model="variation.mpn"]'),
      'product identifier info': this.by.css('product-form-feed .box-info:nth-child(3) .box-header'),
      'product identifier title': this.by.css('div[class="collapse in"]'),
      'barcode field': this.by.css('[ng-show^="currentTab"]:not(.ng-hide) [ng-model="product.gtin"]'),
      'barcode field with variations': this.by.css('input[ng-model="variation.gtin"]'),
      'member price field': this.by.css('[name="product_member_price"]'),
      'faq link': this.by.css('.fake-control-label a[href^="https://support.shoplineapp.com"]'),
      'variations label': this.by.css('.variantOptionForm label'),
      'customized shop variant selector button': this.by.css('.variantOptionForm input[name="variant"]'),
      'edit selector button': this.by.css('button[ng-click*="openImgUploader"]'),
      'row of variants': this.by.css('.modal-content div[ng-repeat="option in variantOptions"]'),
      'image uploader alert': this.by.css('.ImageUploader .alert'),
      'save variants products button': this.by.css('.ImageUploader-footer [ng-click="save()"]'),
      'variants products selector': this.by.css('.ImageUploader-variantOptionList [type="file"]'),
      'image variants selector popup': this.by.css('.ImageUploader'),
      'image variants count content': this.by.css('.ImageUploader-footer .ImageUploader-footer-content'),
      'next button': this.by.css('a[ng-click="selectPage(page + 1, $event)"]'),
      'variants error message': this.by.css('div[class="help-block text-danger ng-binding ng-scope"]'),
      'variants option remove button': this.by.css('a[class="remove-button ng-binding ng-scope"]'),
      'language dropdown': this.by.css('[class*="navbar-collapse"] li[class="dropdown"]:nth-child(1)'),
      'language dropdown option': this.by.css('.dropdown-menu[aria-labelledby="menu-languages"] li'),

      'preset available time toggle': this.by.css('[ng-model="form.availableTimeEnabled"]'),
      'available start date field': this.by.css('[name="available_start_time"]'),
      'available end date field': this.by.css('[name="available_end_time"]'),
      'available start date calendar button': this.by.css('[ng-click="availableStartOpen($event)"]'),
      'available end date calendar button': this.by.css('[ng-click="!form.available_end_time_unlimited && availableEndOpen($event)"]'),
      'calendar table': this.by.css('.dropdown-menu.datetime-picker-dropdown'),
      'today button': this.by.css('[ng-click="select(\'today\')"]'),
      'clear button': this.by.css('[ng-click="select(null)"]'),
      'done button': this.by.css('[ng-click="close()"]'),
      'available date button': this.by.css('[ng-click="select(dt.date)"]:not([disabled])'),
      'never expires checkbox': this.by.css('[name="available_end_time_unlimited"]'),
      'decrement hours button': this.by.css('[ng-disabled="noDecrementHours()"]'),
      // One
      'quantity of retail store reminder': this.by.css('div[class="alert alert-info edit-qty-message ng-scope"]'),
      'product sku field': this.by.css('input[name="product_sku"]'),
      'online quantity field':this.by.css('input[class="form-control table-variation-quantity-field ng-pristine ng-untouched ng-valid ng-scope ng-valid-required ng-valid-pattern"]'),
      'out of stock warning alert': this.by.css('[ng-show*="currentTab"]:not(.ng-hide) div[ng-if="isShowOutOfStockOrderableWarning"]'),
      'variation reminder': this.by.css('[ng-show*=currentTab]:not(.ng-hide) div.alert.alert-info.edit-qty-message.ng-scope'),
    }

  }

  get samples() {

    return {
      'product photo': `${this.props.sample.sampleImagesPath()}/1.png`,
      'product detail photo': `${this.props.sample.sampleImagesPath()}/2.png`,
      'white variants product photo': `${this.props.sample.sampleImagesPath()}/white.jpg`,
      'today date': `${this.props.sample.genDate()}`,
      'tomorrow date': `${this.props.sample.genDate(2)}`,
      'yellow variants product photo': `${this.props.sample.sampleImagesPath()}/4.jpg`,
      'retail store reminder': 'You can add inventory of retail store after product created.',
      'jpg image': `${this.props.sample.sampleImagesPath()}/3.jpg`,
      'xss name': `"><script>alert('(dirty data)xss')</script>`,
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/products/new?locale=en`

  }



}

module.exports = ProductCreatePage