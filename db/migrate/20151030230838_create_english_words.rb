class CreateEnglishWords < ActiveRecord::Migration
  def change
    create_table :english_words do |t|
      t.string :name
      t.string :kind

      t.timestamps null: false
    end
  end
end
