class ApplicationController < ActionController::Base
	include DevisePermissionlist
	include SetSource
	include CurrentUserConcern
end
