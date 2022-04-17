class Tenant < ApplicationRecord
    belongs_to :property, :optional => true
    belongs_to :tenancy, :optional => true
    belongs_to :user, :optional => true
end
