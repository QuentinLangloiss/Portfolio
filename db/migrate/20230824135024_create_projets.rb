class CreateProjets < ActiveRecord::Migration[7.0]
  def change
    create_table :projets do |t|
      t.text :titre
      t.text :description
      t.text :url

      t.timestamps
    end
  end
end
