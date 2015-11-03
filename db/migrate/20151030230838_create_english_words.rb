class CreateEnglishWords < ActiveRecord::Migration
  def change
    create_table :english_words do |t|
      t.string :neutral
      t.string :male
      t.string :female
      t.string :neutral_plural
      t.string :male_plural
      t.string :female_plural
      t.string :kind

      t.timestamps null: false
    end
  end
end
