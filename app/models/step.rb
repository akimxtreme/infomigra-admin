class Step < ApplicationRecord
  belongs_to :category_steps
  belongs_to :type_steps
end
