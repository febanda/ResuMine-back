class CreatePersonalInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_infos do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :bio
      t.string :title
      t.belongs_to :resume, foreign_key: true

      t.timestamps
    end
  end
end
