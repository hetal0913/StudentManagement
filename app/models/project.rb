class Project < ApplicationRecord
    paginates_per 5
    validates :name, :description, presence: true
end
