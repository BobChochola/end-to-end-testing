let Page = require('../../framework/models/Page.js')

class CategoryEditPage extends Page {

  get elements() {

    return {
      'id': this.by.css('div[ng-controller="CategoriesFormController"] form[ng-submit="submitForm()"]'),
      'category name field': this.by.css('input[name="category_name"]'),
      'seo title field': this.by.css('[name="seo_title"]'),
      'banner photo selector': this.by.css('input[id="banner_media"]'),
      'delete photo button': this.by.css('[ng-click^="deleteMediaClicked"]'),
      'update button': this.by.css('button[type="submit"]')
    }

  }

  get samples() {
 
    return {
      'category banner photo': `${this.props.sample.sampleImagesPath()}/1.png`,
    }
  
  }



}

module.exports = CategoryEditPage 
