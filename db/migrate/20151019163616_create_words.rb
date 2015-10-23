class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.string :type
      t.text :meaning

      t.timestamps null: false
    end
  end
end
