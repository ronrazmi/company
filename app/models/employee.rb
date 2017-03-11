class Employee < ApplicationRecord
	has_many :addresses
	validates :first_name, presence: true
	validates :last_name, presence: true

	def full_name
		"#{first_name} #{last_name}"
	end
end
