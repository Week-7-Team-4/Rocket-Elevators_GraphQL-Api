module Types
  class BatteryType < Types::BaseObject
    field :type_building, String, null: true
    field :status, String, null: true
    field :date_commissioning, String, null: true
    field :date_last_inspection, String, null: true
    field :certificate_operations, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :building_id, Integer, null: true
    field :employee_id, Integer, null: true


    # to make queries with a type
    # Adds the queryable  field of building in the battery type class
    field :building, Types::BuildingType, null: true
    
    # Defines the  building attribute where the battery_id is equal to the building id
    def Building
      Building.where(id: object.building_id)[0]
    end
  end
end
