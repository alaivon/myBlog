## README
Hi, I'm Bill, this is one of projects for my exercise, Personal Blog!


### User Story

1. As a user, I want to be able to create posts and share.

2. As a user, I want to be able to edit & destroy posts, so that I can  manage my blog.(But I won't set the limit here)

3. As a user, I want to be able to write posts with markdown, so that it can be show syntax highlight.

4. As a user, I want to be able to have visitors contact me through a form on my site.

5. As a user, I want to make a page to introduce myself name "About Me"
6. As a user, I want to save data for my cash flowing.

7. As a user, I want to calculate my BMI, or visitors'.


### Gem

- [friendly_id](https://github.com/norman/friendly_id), Create pretty URLs

- [babosa](https://github.com/norman/), 字元轉換，要支援中文網址時會用到

- [pygments.rb](https://github.com/tmm1/pygments.rb), syntax Highlighter

- [redcarpet](https://github.com/vmg/redcarpet), Ruby library for Markdown 

- [mail_form](https://github.com/plataformatec/mail_form), Send e-mail straight from forms.

- [font-awesome-rails](https://github.com/bokmann/font-awesome-rails)  provides the Font-Awesome web fonts and stylesheets as a Rails engine for use with the asset pipeline.


## Modeling our Data

 - Post  title:string content:text post_date:date

 - Catalog kind:string

 - Record amount:integer period:date details:string catalog_id:integer

