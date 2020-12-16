class Client < ApplicationRecord
  belongs_to :user
  has_many :projects, dependent: :delete_all
end
