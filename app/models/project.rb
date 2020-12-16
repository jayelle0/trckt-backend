class Project < ApplicationRecord
  belongs_to :client
  has_many :timesheets , dependent: :delete_all
end
