class Category < ApplicationRecord
  has_many :issues
  has_many :apps
  has_many :chatrooms
end
