json.array! @employees.each do |employee|
	json.id employee.id
	json.first_name employee.first_name
	json.last_name employee.last_name
	json.title employee.title
	json.phone_number employee.phone_number
	json.team employee.team
	json.university employee.university
end