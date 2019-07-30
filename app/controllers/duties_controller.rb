class DutiesController < ApplicationController
	def create
		duty = Duty.new(location: params[:location], description: params[:description], personnel_id: params[:personnel_id])
		if duty.save
			render json: duty.to_json
		else
			render json: {error: "Something went wrong during duty creation."}
		end 
	end

	def index
		duties = Duty.all
		render json: duties.to_json(include: [:assignments, :troopers, :officer])
	end

	def show
		if Duty.find_by(id: params[:id])
			duty = Duty.find_by(id: params[:id])
			render json: duty.to_json(include: [:assignments, :troopers, :officer])
		else
			render json: {error: "No duty by this ID exist."}
		end
	end
end
