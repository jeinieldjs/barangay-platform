class AddLikeStateToLikes < ActiveRecord::Migration[7.1]
  def change
    add_column :likes, :like_state, :boolean
  end
end
