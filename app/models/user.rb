class User < ApplicationRecord
    has_many :clients, dependent: :delete_all
    has_secure_password
end
