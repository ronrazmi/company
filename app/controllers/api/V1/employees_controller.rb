class Api::V1::EmployeesController < ApplicationController

	def index
		@employees = Employee.all
		render 'index.json.jbuilder'
	end

	def show
		@employee = Employee.find(params[:id])
		render 'show.json.jbuilder'
	end

	def create
		@employee = Employee.create(first_name: params[:first_name], last_name: params[:last_name], title: params[:title], phone_number: params[:phone_number], team: params[:team], university: params[:university])
		if @employee.save
			render 'show.json.jbuilder'
		else
			render json: {errors: @employee.errors.full_messages}, status: 422
		end
	end

	def update
		@employee = Employee.find(params[:id])
		@employee.update(first_name: params[:first_name] || @employee.first_name,
			last_name: params[:last_name] || @employee.last_name, 
			title: params[:title] || @employee.title,
			phone_number: params[:phone_number] || @employee.phone_number, 
			team: params[:team] || @employee.team,
			university: params[:university] || @employee.university)
		render 'show.json.jbuilder'
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		render json: {message: "you just deleted an entry"}
	end
end
