class Chatroom < ApplicationRecord
  belongs_to :issue, optional: true
  belongs_to :category, optional: true
  belongs_to :app, optional: true
  belongs_to :grandchild, polymorphic: true, optional: true
  belongs_to :grandparent, polymorphic: true
  has_many :messages
end
