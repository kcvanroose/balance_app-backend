class TaskSerializer < ActiveModel::Serializer
  attributes :id, :description, :due_date, :project_id, :completed
  belongs_to :project
end
