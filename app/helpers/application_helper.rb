module ApplicationHelper
	def render_datetime(time)
		time.strftime('%b %d, %Y')
	end
end
