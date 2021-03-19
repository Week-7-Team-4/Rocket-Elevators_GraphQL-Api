module Types
  class ColumnType < Types::BaseObject
    field :type_building, String, null: true
    field :number_floors_served, Integer, null: true
    field :status, String, null: true
    field :notes, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :battery_id, Integer, null: true
    field :id, ID, null: false
    
    # Adds the queryable field of battery in the Column type class
    field :battery, Types::BatteryType, null: true

    # Defines the building attribute where the column_type_id is equal to the battery id
    def battery
      Battery.where(id: object.battery_id)[0]
    end
  end
end
