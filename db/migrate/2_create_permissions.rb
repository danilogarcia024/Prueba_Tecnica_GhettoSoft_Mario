class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.text :nombre, null: false
      t.text :descripcion

      t.timestamps
    end
  end
end
