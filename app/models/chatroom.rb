class Chatroom < ApplicationRecord
  belongs_to :issue
  belongs_to :category
  belongs_to :application
  belongs_to :grandchild, polymorphic: true
  belongs_to :grandparent, polymorphic: true
  has_many :messages
end
