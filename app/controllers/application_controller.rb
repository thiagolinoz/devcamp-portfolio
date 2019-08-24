class ApplicationController < ActionController::Base
	include DevisePermissionlist
	include SetSource
end
