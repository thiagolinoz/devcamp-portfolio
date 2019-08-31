module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		OpenStruct.new(name: "Guest user", 
					   first_name: "Guest", 
					   last_name: "user", 
					   email: "guest@email.com"
					   )
	end
end