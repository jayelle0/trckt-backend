class Client < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :delete_all



  def client_total_earned 
    client_total_earned = 0 
    self.projects.each do |project|
      client_total_earned+=project.project_total_earned
    end 
    return client_total_earned
  end 
  # currently not included to serializer to determine if needed

  def client_completed_earned 
    client_completed_earned = 0 
    self.projects.each do |project|
      if project.complete=== true
        client_completed_earned+=project.project_total_earned
      end 
    end 
    return client_completed_earned
  end 

  def client_incomplete_earned 
    client_incomplete_earned = 0 
    self.projects.each do |project|
      if project.complete=== false
        client_incomplete_earned+=project.project_total_earned
      end 
    end 
    return client_incomplete_earned
  end 

     
end
