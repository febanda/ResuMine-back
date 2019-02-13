class User < ApplicationRecord
    has_many :resumes 

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :password_digest, confirmation: true
    # validates :password_confirmation, presence: true
end
