class Task < ApplicationRecord
    has_many :chores
    has_many :children, through: :chores

    validates_presence_of :name

    validate_numericality_of :points, :greater_than =>0
end
