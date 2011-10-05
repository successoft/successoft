module Helpers

	def partial(name, options = {})
		haml "_#{name}".to_sym, options.merge!(:layout => false)
	end
	
	def is_current_page?(page)
	  request.path_info == "/#{page}"
  end
end