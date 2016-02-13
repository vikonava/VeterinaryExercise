module ApplicationHelper
	def current?(controller, action=nil)
		active = false

		if controller.is_a?(Array)
			active = controller.index(params[:controller]) ? true : false
		else
			active = params[:controller] == controller ? true : false
		end

		if active && !action.nil?
			active = params[:action] == action ? true : false
		end

		"active" if active
	end
end
