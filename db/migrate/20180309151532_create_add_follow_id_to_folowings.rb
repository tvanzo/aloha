class CreateAddFollowIdToFolowings < ActiveRecord::Migration[5.1]
  def change
    create_table :add_follow_id_to_folowings do |t|
      add_column :following, :follower_id, :string
      add_column :following, :following_id, :string
      t.timestamps
    end
  end
end
