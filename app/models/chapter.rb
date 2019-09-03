class Chapter < ApplicationRecord
  has_many :users
  # has_many :tests
  # has_many :owners
  # has_many :handlers
end
