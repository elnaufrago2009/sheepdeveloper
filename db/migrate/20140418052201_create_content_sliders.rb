class CreateContentSliders < ActiveRecord::Migration
  def change
    create_table :content_sliders do |t|
      t.string :title_one
      t.string :title_two
      t.string :title_tree
      t.string :texto_one
      t.string :texto_two
      t.string :texto_tree
      t.string :image
      t.string :video
      t.integer :aprobado

      t.timestamps
    end
  end
end
