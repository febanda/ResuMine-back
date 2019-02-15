class Resume < ApplicationRecord
  belongs_to :user
  has_many :educations
  accepts_nested_attributes_for :educations
  has_many :skills
  accepts_nested_attributes_for :skills
  has_many :work_experiences 
  accepts_nested_attributes_for :work_experiences
  has_one :personal_info
  accepts_nested_attributes_for :personal_info
end
