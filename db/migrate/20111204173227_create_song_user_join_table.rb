class CreateSongUserJoinTable < ActiveRecord::Migration
  def up
    create_table :songs_users, :id => false do |t|
      t.integer :song_id
      t.integer :user_id
    end
  end

  def down
    drop_table:songs_users
  end
end
