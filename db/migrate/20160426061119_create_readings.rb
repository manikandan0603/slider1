class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :main_slider_values
      t.integer :s1
      t.integer :s2
      t.integer :s3
      t.integer :s4
      t.integer :s5
      t.integer :s6
      t.integer :s7
      t.integer :s8
      t.integer :s9
      t.integer :s10

      t.timestamps null: false
    end
  end
end
