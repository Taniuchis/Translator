class CreateSpanishWords < ActiveRecord::Migration
  def change
    create_table :spanish_words do |t|
      t.string :neutral
      t.string :male
      t.string :female
      t.string :neutral_plural
      t.string :male_plural
      t.string :female_plural
      t.string :kind
      t.references :english_word, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
