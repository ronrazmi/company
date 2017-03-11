json.array! @employees.each do |employee|

	json.partial! 'partial.json.jbuilder', employee: employee

end