let Page = require('../../framework/models/Page.js')

class BlogPostsCreatePage extends Page {

  get elements() {

    return {
      'id': this.by.css('form[name="postForm"]'),
      'post title field': this.by.css('input[name="post_title"]'),
      'post content field': this.by.css('#cke_1_contents .cke_wysiwyg_div'),
      'image upload button': this.by.css('#cke_1_top #cke_14'),
      'blog image selector': this.by.css('input#main_media'),
      'upload button': this.by.css('button[ng-click="save()"]'),
      'post content img': this.by.css('#cke_1_contents .cke_wysiwyg_div img'),
      'save button': this.by.css('button[type="submit"]'),
      'publish button': this.by.css("a.btn-primary:not(.ng-hide)[ng-click*=toggleStatus]"),
      'box img': this.by.css('.dialogbox .img-wrap img'),
    }

  }

  get url() {

    return `${this.props.baseURL}/admin/${this.props.account.handle}/blog/posts/new?locale=en`

  }

  get samples() {

    return {
      'post title': 'Test blog title',
      'post content': 'Test blog content',
      'blog photo': `${this.props.sample.sampleImagesPath()}/2.png`,
    }

  }
}

module.exports = BlogPostsCreatePage
