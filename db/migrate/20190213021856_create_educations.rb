class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :years_attended
      t.string :major
      t.boolean :degree
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
