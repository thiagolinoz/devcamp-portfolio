class ApplicationController < ActionController::Base
	include DevisePermissionlist
	include SetSource
	include CurrentUserConcern
	include DefaultPageContent
end