class CreateSpanishWords < ActiveRecord::Migration
  def change
    create_table :spanish_words do |t|
      t.string :name
      t.string :kind
      t.references :english_word, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
