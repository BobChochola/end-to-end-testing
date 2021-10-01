let Page = require('../../framework/models/Page.js')

class CategoryCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="CategoriesFormController"]'),
      'countdown': this.by.css('span.remaining-char-hint.ng-binding.ng-scope'),
      'category name field': this.by.css('input[name="category_name"]'),
      'title field': this.by.css('input[name="seo_title"]'),
      'url field': this.by.css('input[name="link_url_link"]'),
      'category banners photo selector': this.by.css('input[id="banner_media"]'),
      'delete photo button': this.by.css('button[ng-click="deleteMediaClicked($index)"]'),
      'alt button': this.by.css('button[ng-click="addAlt(media)"]'),
      'alt field': this.by.css('input[ng-model="data.alt_translations[\'en\']"]'),
      'alt ok button': this.by.css('button[ng-click="confirm()"]'),
      'add button': this.by.css('button[type="submit"]'),
    }

  }

  get samples() {
 
    return {
      'category xss name': `"><script>alert('(dirty data)')</script>`,
      'category banners photo': `${this.props.sample.sampleImagesPath()}/1.png`,
    }

  }


  get url() {
  
    return `${this.props.baseURL}/admin/${this.props.account.handle}/categories/new?locale=en`
  
  }

}

module.exports = CategoryCreatePage 
