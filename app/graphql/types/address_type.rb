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

    field :address_information, [String], null: false

    def address_information
      thing = ""
      if object.building_id != ""
        thing = "Building Id: #{object.building_id}"
      elsif object.customer_id != ""
        thing = "Customer Id: #{object.customer_id}"
      end

      return [thing, "Status: #{object.status}", "Entity: #{object.entity}", "Number And Street: #{object.number_street}", "City: #{object.city}", "Postal Code: #{object.postal_code}", "Country: #{object.country}"]
    end

    field :building, Types::BuildingType, null: true

    def building
      Building.where(id: object.building_id)[0]
    end
  end
end
