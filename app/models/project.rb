class Project < ApplicationRecord
  belongs_to :client
  has_many :timesheets , dependent: :delete_all

  def project_total_hours 
    total_hours = 0
      self.timesheets.each do |timesheet|
        total_hours+=timesheet.hours
      end 
    return total_hours
  end 

  def project_total_earned 
    self.hourly_fee*self.project_total_hours
  end 



end
