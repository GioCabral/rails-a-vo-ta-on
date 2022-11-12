class Issue < ApplicationRecord
  belongs_to :category
  has_many :chatrooms
end
