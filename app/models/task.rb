class Task < ApplicationRecord
    has_many :chores
    has_many :children, through: :chores

    validates_presence_of :name

    validates_numericality_of :points, :greater_than =>0

    scope :order_by_name, ->{ order('name') }
    scope :active, -> { where(active:true) }
end
