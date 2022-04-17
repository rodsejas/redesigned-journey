class Property < ApplicationRecord
    belongs_to :user
    has_many :tenants

    def address
        [street_address, suburb, country].compact.join(', ')
    end

    geocoded_by :address
    after_validation :geocode
end