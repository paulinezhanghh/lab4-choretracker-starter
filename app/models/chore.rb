class Chore < ApplicationRecord
    belongs_to :task
    belongs_to :children
end
