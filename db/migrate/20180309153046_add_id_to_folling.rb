class AddIdToFolling < ActiveRecord::Migration[5.1]
  def change
    add_column :following, :follower_id, :integer
    add_column :following, :following_id, :string
  end
end
