require 'rails_helper'

RSpec.describe User, type: :model do
  it {should belong_to(:chapter)}
  it {should have_many(:tests)}
end
