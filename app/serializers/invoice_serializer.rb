class InvoiceSerializer < ActiveModel::Serializer
  attributes :id, :total, :project_id
  belongs_to :project
end
