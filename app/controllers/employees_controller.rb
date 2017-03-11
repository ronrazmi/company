class EmployeesController < ApplicationController

	def index
		
		render 'index.html.erb'
	end



end




# < ng-repeat="employee in employees | filter: {first_name: new_first_name} | orderBy: inputAttributeOrder: false" >