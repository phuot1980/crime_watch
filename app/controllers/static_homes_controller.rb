class StaticHomesController < ApplicationController
	def home
		@reports = Report.all
	end
end
