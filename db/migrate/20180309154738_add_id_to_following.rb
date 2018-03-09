class AddIdToFollowing < ActiveRecord::Migration[5.1]
  def change
    add_column :followings, :follower_id, :integer
    add_column :followings, :following_id, :string
  end
end
