class Task < ApplicationRecord
    belongs_to :category
    validates :name, presence: true, uniqueness: true
    validates :due_date, presence: true  
end
