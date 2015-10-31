class CreateTenses < ActiveRecord::Migration
  def change
    create_table :tenses do |t|
      t.string :i
      t.string :you
      t.string :he
      t.string :she
      t.string :it
      t.string :they
      t.string :we
      t.string :you_p
      t.references :word, index: true, polymorphic: true

      t.timestamps null: false
    end
  end
end
