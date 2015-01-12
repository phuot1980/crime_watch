class StaticHomesController < ApplicationController
	def home
		@user = session[:user_id]
		@reports = Report.all
	end
end
