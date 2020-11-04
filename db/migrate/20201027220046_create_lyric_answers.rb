class CreateLyricAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :lyric_answers do |t|
      t.string :lyric

      t.timestamps
    end
  end
end
