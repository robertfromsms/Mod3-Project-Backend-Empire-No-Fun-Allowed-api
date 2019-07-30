class AssignmentsController < ApplicationController
	def create
		assignment = Assignment.new(personnel_id: params[:personnel_id], duty_id: params[:duty_id])
		if assignment.save
			render json: assignment.to_json
		else
			render json: {error: "Something went wrong during the assignment process."}
		end
	end

	def update
		assignment = Assignment.find_by(id: params[:id])
		if params[:status] && assignment.update(status: params[:status])
			render json: assignment.to_json
		elsif params[:comment] && assignment.update(comment: params[:comment])
			render json: assignment.to_json
		else
			render json: {error: "Something went wrong during the assignment update process."}
		end
	end
end
