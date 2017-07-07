class Step < ApplicationRecord
  belongs_to :category_step
  belongs_to :type_step
end
