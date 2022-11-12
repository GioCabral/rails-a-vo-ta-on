class Category < ApplicationRecord
  has_many :issues
  has_many :applications
  has_many :chatrooms
end
