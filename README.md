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


### Notes

- rails 裡有一個url_for的method，他會return網址，以這次在posts/show.html.erb的share icon為例，only_path屬性如果設定為true，會回傳相對位址的url，所以設定為false，但因為在是RESTful resource，所以我可以把url_for，改成 post_url， 傳回的就是完完整整的絕對位置的url。(經爬文，url_for 不支援rails 3.1以後的版本，rails4改成polymorphic_url)

- rake import:cash_date 我利用基本ruby語法和rake來試著加入一些記帳的資料。

```ruby lib/task/cash_date.rake
desc "Import my cash flow"
task :import =>:environment do

	record_date = []
	amount = [200,250,120,100,60,90,1000,1200,530,210,120,100,100,140,170,200,160]
	kind = ["dinner", "lunch", "Living Expense", "Some books", "drink", "Basic Expense", "Movie and Food", "Oil", "dinner", "lunch", "Food", "breakfast", "dinner", "lunch"]
	Date.new(2016,4,1).upto(Date.new(2016,4,26)) do |x|
	  record_date << x
	end

	record_info = []
	i = 0
	while i < record_date.length-1
		record_info << [record_date.sample, kind.sample, amount.sample]
		i = i + 1
	end

	record_info.each do |period, kind, amount|
		r = Record.new
		r.period = period
		r.details  = kind
		r.amount = amount
		r.catalog_id =  1
		r.save
	end
end

```
