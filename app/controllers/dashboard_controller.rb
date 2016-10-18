class DashboardController < ApplicationController
	def index
		@charactersheets = Charactersheet.all.limit(10)
	end
end