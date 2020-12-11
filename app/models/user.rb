class User < ApplicationRecord
    has_many :clients 
    has_secure_password
end
