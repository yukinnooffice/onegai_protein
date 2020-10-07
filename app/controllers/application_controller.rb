class ApplicationController < ActionController::Base
	devise_for :admin
	devise_for :public
end
