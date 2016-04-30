module RecordsHelper

	def render_total(record)
		record.inject(0){|sum, record| sum + record.amount}
	end

end
