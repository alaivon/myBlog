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