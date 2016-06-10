class CreateDadabadas < ActiveRecord::Migration
  def change
    create_table :dadabadas do |t|
      t.string :alphanu
      t.integer :numbers
      t.decimal :floats
      t.binary :files

      t.timestamps null: false
    end
  end
end
