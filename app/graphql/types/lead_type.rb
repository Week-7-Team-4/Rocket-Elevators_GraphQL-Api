module Types
  class LeadType < Types::BaseObject
    field :full_name, String, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :company_name, String, null: true
    field :project_name, String, null: true
    field :department, String, null: true
    field :project_descripition, String, null: true
    field :message, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :filename, String, null: true
    field :file_attachement, String, null: true
  end
end
