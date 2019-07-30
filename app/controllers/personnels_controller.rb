class PersonnelsController < ApplicationController
	def login
		if Personnel.find_by(name: params[:name], email: params[:email]) && Personnel.find_by(name: params[:name], email: params[:email]).role == "trooper"
			trooper = Personnel.find_by(name: params[:name], email: params[:email])
			render json: trooper.to_json(include: [:duties])
		elsif Personnel.find_by(name: params[:name], email: params[:email]) && Personnel.find_by(name: params[:name], email: params[:email]).role == "officer"
			officer = Personnel.find_by(name: params[:name], email: params[:email])
			render json: officer.to_json(include: [:officer_duties])
		else
			render json: {error: "No such personnel found."}
		end
	end

	def show
		if Personnel.find_by(id: params[:id]) && Personnel.find_by(id: params[:id]).role == "trooper"
			trooper = Personnel.find_by(id: params[:id])
			render json: trooper.to_json(include: [:duties])
		elsif Personnel.find_by(id: params[:id]) && Personnel.find_by(id: params[:id]).role == "officer"
			officer = Personnel.find_by(id: params[:id])
			render json: officer.to_json(include: [:officer_duties])
		else
			render json: {error: "No such personnel found."}
		end
	end

	def index
		# troopers_with_less_than_3_duties = []
		troopers = Personnel.where(role: "trooper")

		# troopers.each do |trooper|
		# 	if trooper.duties.length < 3
		# 		troopers_with_less_than_3_duties.push(trooper)
		# 	end
		# end

		# render json: troopers_with_less_than_3_duties.to_json
		render json: troopers.to_json
	end

	def create
		trooper = Personnel.new(name: params[:name], email: params[:email], pic_url: params[:pic_url], role: "trooper", bio: params[:bio])

		if trooper.save
			render json: trooper.to_json
		else
			render json: {error: "An error occured during registration."}
		end
	end
end
