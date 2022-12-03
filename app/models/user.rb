class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :payment_methods
  has_many  :grandparent_chatrooms, :foreign_key => "grandparent_id", :class_name => "chatrooms"
  has_many  :grandchild_chatrooms, :foreign_key => "grandchild_id", :class_name => "chatrooms"
  has_many  :grandparent_billings, :foreign_key => "grandparent_id", :class_name => "billings"
  has_many  :grandchild_billings, :foreign_key => "grandchild_id", :class_name => "billings"
  has_many :feeds

  validates :name, :cpf, presence: true
end
