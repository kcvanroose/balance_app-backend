class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :tasks, :start_date, :end_date, :invoice, :fee, :hourly_rate, :time_spent, :name, :completed, :description
  belongs_to :client
end
