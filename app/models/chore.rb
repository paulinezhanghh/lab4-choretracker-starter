class Chore < ApplicationRecord
    belongs_to :task
    belongs_to :child


    scope : by_task, {join(:task).order('task.name')}

end
