

	json.id employee.id
	json.FirstName employee.first_name
	json.LastName employee.last_name
	json.FullName employee.full_name
	json.title employee.title
	json.PhoneNumber employee.phone_number
	json.team employee.team
	json.university employee.university
	json.addresses employee.addresses.each do |address|
		json.address_1 address.address_1
		json.address_2 address.address_2
		json.city address.city
		json.state address.state
		json.zip address.zip
		
	end