class Order < ApplicationRecord
  # validations
  validates_presence_of :food_name, :receiver_email
end
