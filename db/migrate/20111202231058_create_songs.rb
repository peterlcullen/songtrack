class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :foreign_id
      t.string :source

      t.timestamps
    end
  end
end
