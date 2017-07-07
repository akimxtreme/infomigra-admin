class Commune < ApplicationRecord
  belongs_to :province
  
  delegate :region, to: :province
end
