class StaticHomesController < ApplicationController
	def home
		@user = session[:user_id]
		@report = Report.all.pluck(:body)
	end
end
