class Resume < ApplicationRecord
  belongs_to :user
  has_many :educations
  has_many :skills
  has_many :work_experiences 
  has_many :personal_infos
end
