module Types
  class BuildingDetailType < Types::BaseObject
    field :info_key, String, null: true
    field :value, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :building_id, Integer, null: true
    field :id, ID, null: false


    # Adds a new field to building_detail
    field :building_detail_info, [String], null: true
    # define what the new field will extract like information
    def building_detail_info
      return ["Id: #{object.id}", "Building Id: #{object.building_id}", "Information Key: #{object.info_key}", "Value: #{object.value}"]
    end

    # Adds the queryable  field of building in the buildingdetails type class
    field :building, Types::BuildingType, null: true

    # Defines the  building attribute where the buildingDetail_id is equal to the buildng idi
    def building
      Building.where(id: object.building_id)[0]
    end
  end
end
