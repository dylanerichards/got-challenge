class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :born, default: "Unknown"
      t.text :house, default: [].to_yaml, array: true

      t.timestamps
    end
  end
end
