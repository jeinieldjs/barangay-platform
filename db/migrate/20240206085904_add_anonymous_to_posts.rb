class AddAnonymousToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :anonymous, :boolean
  end
end
