class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensative: false }
    has_many :sessions, dependent: :destroy
end
