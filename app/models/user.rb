class User < ApplicationRecord
  belongs_to :countries
  belongs_to :communes
  belongs_to :genders
  belongs_to :sexual_identities
  belongs_to :situations_arrivals_countries
  belongs_to :current_situation_countries
  belongs_to :you_want_to_dos
  belongs_to :sentimental_situations
  belongs_to :family_bonds
  belongs_to :profiles
  belongs_to :distances
  belongs_to :level_studies
  belongs_to :studies
end
