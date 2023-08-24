class CreateCompetences < ActiveRecord::Migration[7.0]
  def change
    create_table :competences do |t|
      t.text :nom
      t.text :description

      t.timestamps
    end
  end
end
