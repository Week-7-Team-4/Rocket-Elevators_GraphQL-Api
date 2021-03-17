module Types
  class ColumnType < Types::BaseObject
    field :type_building, String, null: true
    field :number_floors_served, Integer, null: true
    field :status, String, null: true
    field :notes, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :battery_id, Integer, null: true
  end
end
