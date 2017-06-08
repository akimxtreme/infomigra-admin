class UserAvailability < ApplicationRecord
  belongs_to :abilities
  belongs_to :users
end
