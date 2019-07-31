class AssignmentsController < ApplicationController
	def create
		duty_trooper_ids = Duty.find_by(id: params[:duty_id]).troopers.map { |trooper| trooper.id }
		if duty_trooper_ids.find_index(params[:personnel_id])
			render json: {error: "This trooper has already been assigned to this duty."}
			return
		end

		assignment = Assignment.new(personnel_id: params[:personnel_id], duty_id: params[:duty_id])
		if assignment.save
			render json: assignment.to_json
		else
			render json: {error: "Something went wrong during the assignment process."}
		end
	end

	def update
		if Assignment.find_by(id: params[:id]) do
			assignment = Assignment.find_by(id: params[:id])
		else
			render json: {error: "No assignment with that ID found."}
			return
		end
		if params[:status] && assignment.update(status: params[:status])
			render json: assignment.to_json
		elsif params[:comment] && assignment.update(comment: params[:comment])
			render json: assignment.to_json
		else
			render json: {error: "Something went wrong during the assignment update process."}
		end
	end
end
