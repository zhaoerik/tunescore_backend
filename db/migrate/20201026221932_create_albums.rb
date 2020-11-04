class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :popularity
      t.string :image
      t.string :release_date

      t.timestamps
    end
  end
end
