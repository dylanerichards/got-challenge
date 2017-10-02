class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :born, default: "Unknown"
      t.string :house

      t.timestamps
    end
  end
end
