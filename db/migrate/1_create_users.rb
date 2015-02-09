class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      
      t.text :Nombre
      t.text :Apellido
      t.integer :Cedula
      t.text :Email

      t.timestamps
    end
  end
end
