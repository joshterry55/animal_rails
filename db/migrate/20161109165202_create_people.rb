class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name, null: false #database restraint. Has to have a value
      t.integer :age
      t.string :gender
      t.boolean :alive, default: true #setting the default to true 

      t.timestamps
    end
  end
end
