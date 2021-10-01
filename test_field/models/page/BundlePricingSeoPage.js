let Page = require('../../framework/models/Page.js')

class BundlePricingSeoPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="PromotionsSeoController"]'),
      'alert': this.by.css('.alert'),
      'promotion name': this.by.css('div.box-info div.box-body span[class="ng-binding"]'),
      'save button': this.by.css('button[type="submit"]'),

      //search engine optimization
      'search engine optimization area': this.by.css('div[uib-collapse="isSeoCollapsed"]'),
      'alert': this.by.css('div[ng-hide="isShowSeoPreview()"]'),
      'preview title': this.by.css('div[class*="seo-preview-container"] div[class*="title"]'),
      'preview url': this.by.css('div[class*="seo-preview-container"] div[class*="url"]'),
      'preview description': this.by.css('div[class*="seo-preview-container"] div[class*="description"]'),
      'title field': this.by.css('input[name="seo_title"]'),
      'title remain char': this.by.css('div[label="Title"] span[class*="remaining-char-hint"]'),
      'description field': this.by.css('div[label="Description"] textarea[name="seo_description"]'),
      'description remain char': this.by.css('div[label="Description"]  span[class*="remaining-char-hint"]'),
      'keywords field': this.by.css('div[label="Keywords"] input[name="seo_keywords"]'),
      'keywords remain char': this.by.css('div[label="Keywords"] span[class*="remaining-char-hint"]'),
      'URL field': this.by.css('div[label="SEO-Friendly URL"] input[name="link_url_link"]'),

      //promotion term & condition
      'promotion description field': this.by.css('textarea[name="seo_description"][ng-model*="promotion.term_translations"]'),

      //promotion banner
      'promotion photo selector': this.by.css('input[id="banner_media"]'),
      'delete photo button': this.by.css('button[ng-click="deleteMediaClicked($index)"]'),
    }

  }
  get samples() {

    return {
      'promotion page': `${this.props.sample.genShopURL(this.props.account.handle)}/promotions/BundleGroupFor49`,
      'promotion photo': `${this.props.sample.sampleImagesPath()}/4.jpg`,
      'random number': `${Math.round(Math.random() * 10000000000)}`
    }
  }

}
module.exports = BundlePricingSeoPage