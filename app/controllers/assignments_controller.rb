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
		if Assignment.find_by(id: params[:id])
			assignment = Assignment.find_by(id: params[:id])
		else
			render json: {error: "No assignment with that ID found."}
			return
		end

		if (params[:status] === true || params[:status] === false) && assignment.update(status: params[:status])
			render json: assignment.to_json
		elsif params[:comment]
			oldComment = assignment.comment
			updatedComment = oldComment + "\n" + params[:comment]
			if assignment.update(comment: updatedComment)
				render json: assignment.to_json
				return
			else
				render json: {error: "Something went wrong during the assignment update process."}
			end
		else
			render json: {error: "Something went wrong during the assignment update process."}
		end
	end
end
