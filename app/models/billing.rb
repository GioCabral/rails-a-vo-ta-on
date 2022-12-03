class Billing < ApplicationRecord
  belongs_to :grandchild, polymorphic: true, optional: true
  belongs_to :grandparent, polymorphic: true
end
