class CreateFormations < ActiveRecord::Migration[5.1]
  def change
    create_table :formations do |t|
      t.string :name
      t.string :mail
      t.text :description

      t.timestamps
    end
  end
end
