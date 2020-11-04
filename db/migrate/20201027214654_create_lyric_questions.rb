class CreateLyricQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :lyric_questions do |t|
      t.string :question
      t.belongs_to :game, null: false, foreign_key: true
      t.belongs_to :lyrics, null: false, foreign_key: true

      t.timestamps
    end
  end
end
