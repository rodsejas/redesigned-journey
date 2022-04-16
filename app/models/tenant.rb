class Tenant < ApplicationRecord
    belongs_to :property, :optional => true
    belongs_to :tenancy, :optional => true
end
