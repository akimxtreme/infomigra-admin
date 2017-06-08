class Profile < ApplicationRecord
  belongs_to :country_categories
  belongs_to :situations_arrivals_countries
  belongs_to :current_statuses
  belongs_to :family_bonds
end
