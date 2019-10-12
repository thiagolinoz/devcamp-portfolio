module ApplicationHelper
	def login_helper style = ''
		if current_user.is_a?(GuestUser)
      		(link_to "Sign in", new_user_registration_path, class: style) +
          " ".html_safe +
          (link_to "Login", new_user_session_path, class: style)
    	else
      		link_to "Logout", destroy_user_session_path, method: :delete, class: style
    	end
	end

	def source_helper(styles)
		if session[:source]
      		greeting = "Thanks for visiting me from #{session[:source]}"
      		content_tag(:div, greeting.html_safe, class: styles)
    	end
	end

  def copyright_generator
    LinozViewTool::Renderer.copyright "Nina's Enterprise", 'All rights reserved'
  end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "Please pay attention!", sticky: false)
  end


end
