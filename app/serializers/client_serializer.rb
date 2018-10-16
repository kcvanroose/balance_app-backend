class ClientSerializer < ActiveModel::Serializer
  attributes :id, :name, :contact, :phone_number, :email_address
  has_many :projects
end
