class Category < ApplicationRecord
  has_many :issues, :applications
end
