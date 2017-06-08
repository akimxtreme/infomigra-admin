class Availability < ApplicationRecord
  belongs_to :days
  belongs_to :schedules
end
