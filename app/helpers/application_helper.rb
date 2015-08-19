module ApplicationHelper

	#return a title based on a page
	def title
		base_title="My App"
		if @titre.nil?
			base_title
		else
			"#{base_title} | #{@titre}"
		end
	end






end
