class Student < ActiveRecord::Base
	belongs_to :program
  attr_accessible :name, :program_id
end
