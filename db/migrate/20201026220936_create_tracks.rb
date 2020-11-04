class CreateTracks < ActiveRecord::Migration[6.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :popularity
      t.string :explicit
      t.belongs_to :artist, null: false, foreign_key: true
      t.belongs_to :album, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
