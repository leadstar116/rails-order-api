require 'rails_helper'

RSpec.describe Order, type: :model do
  it { should validate_presence_of(:food_name) }
  it { should validate_presence_of(:receiver_email) }
end
