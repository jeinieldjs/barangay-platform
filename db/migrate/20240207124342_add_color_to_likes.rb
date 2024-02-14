class AddColorToLikes < ActiveRecord::Migration[7.1]
  def change
    add_column :likes, :color, :string
  end
end
