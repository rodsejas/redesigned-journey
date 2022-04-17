class Tenancy < ApplicationRecord
    has_many :tenants
    belongs_to :user, :optional => true
end
