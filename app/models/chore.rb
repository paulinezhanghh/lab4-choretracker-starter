class Chore < ApplicationRecord
    belongs_to :task
    belongs_to :child

    validates_date :due_on

    scope :by_task, -> {joins(:task).order('name')}
    scope :chronological, -> { order(:due_on) }
    scope :pending, -> { where(completed: false) }
    scope :done, -> { where(completed: true) }
    scope :upcoming, -> { where('due_on >= ?', Date.today) }
    scope :past, -> { where('due_on < ?', Date.today) }

    def status
        if completed == false
            return "Pending"
        else
            return "Completed"
        end
    end
end
