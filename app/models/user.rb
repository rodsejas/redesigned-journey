class User < ApplicationRecord
    has_many :properties
    has_many :tenants
    has_many :tenancies
    
    has_secure_password

    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address" }
end
