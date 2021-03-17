module Types
  class AddressType < Types::BaseObject
    field :id, ID, null: false
    field :type_address, String, null: false
    field :status, String, null: false
    field :entity, String, null: false
    field :number_street, String, null: true
    field :suite_apt, String, null: true
    field :city, String, null: true
    field :postal_code, String, null: true
    field :country, String, null: true
    field :notes, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :building_id, Int, null: true
    field :customer_id, Int, null: true
    field :latitude, String, null: true
    field :longitude, String, null: true
  end
end
