class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.text :titre
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
