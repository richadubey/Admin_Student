class Student < ApplicationRecord
	belongs_to :college
	has_one :marksheet
end
