class AddRatingToChatrooms < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :rating, :integer
  end
end
