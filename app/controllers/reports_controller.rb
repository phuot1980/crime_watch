class ReportsController < ApplicationController
	def index
		@reports = Report.all
	end	

	def show
		@report = Report.find(params[:id])
		# @comment = Comment.new
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.create(report_params)
		@report.user = current_user
		if @report.save
			redirect_to reports_path
		else
			render :new
		end
	end

	private

	def report_params
		params.require(:report).permit(:name, :location, :body, :user)
	end
end
