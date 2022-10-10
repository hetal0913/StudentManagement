class Student < ApplicationRecord
    paginates_per 5
    validates :first_name, :last_name, :email, presence: true
end
