module Types
  class CustomerType < Types::BaseObject
    field :date_create, String, null: true
    field :company_name, String, null: true
    field :cpy_contact_phone, String, null: true
    field :cpy_contact_full_name, String, null: true
    field :cpy_contact_email, String, null: true
    field :cpy_description, String, null: true
    field :tech_authority_service_full_name, String, null: true
    field :tech_authority_service_phone, String, null: true
    field :tech_manager_service_email, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :user_id, Integer, null: true
    field :address_id, Integer, null: true
    field :id, ID, null: false


  end
end
