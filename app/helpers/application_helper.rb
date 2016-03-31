module ApplicationHelper
	def markdown(text)
	 	markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, fenced_code_blocks: true, 
	    autolink: true, tables: true, quote: true, highlight: true, underline: true)
		return markdown.render(text).html_safe
	end

	def calculate_votes_for(resource)
		resource.get_upvotes.size  - resource.get_downvotes.size
	end
end
