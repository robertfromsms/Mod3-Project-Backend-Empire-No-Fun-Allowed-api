class DutiesController < ApplicationController
	def create
		duty = Duty.new(location: params[:location], description: params[:description], personnel_id: params[:personnel_id], duty_status: "Inactive")
		if duty.save
			render json: duty.to_json
		else
			render json: {error: "Something went wrong during duty creation."}
		end 
	end

	def update
		if Duty.find_by(id: params[:id])
			duty = Duty.find_by(id: params[:id])
		else
			render json: {error: "No duty with that ID found."}
			return
		end
		if params[:duty_status] && duty.update(duty_status: params[:duty_status])
			render json: duty.to_json
		else
			render json: {error: "Something went wrong during the assignment update process."}
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
