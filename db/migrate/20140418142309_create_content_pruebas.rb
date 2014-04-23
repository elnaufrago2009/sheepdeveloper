class CreateContentPruebas < ActiveRecord::Migration
  def change
    create_table :content_pruebas do |t|
      t.string :nombre
      t.string :apellidos

      t.timestamps
    end
  end
end
