class Project < ApplicationRecord
  belongs_to :client
  has_many :timesheets 
end
