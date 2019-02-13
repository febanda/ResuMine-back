class CreateWorkExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :work_experiences do |t|
      t.string :company
      t.string :position
      t.string :years
      t.text :responsibilities
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
