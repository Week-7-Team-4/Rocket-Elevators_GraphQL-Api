module Types
  class BuildingType < Types::BaseObject
    field :adm_contact_full_name, String, null: true
    field :adm_contact_email, String, null: true
    field :adm_contact_phone, String, null: true
    field :tech_contact_full_name, String, null: true
    field :tech_contact_email, String, null: true
    field :tech_contact_phone, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :customer_id, Integer, null: true
    field :address_id, String, null: true
  end
end
