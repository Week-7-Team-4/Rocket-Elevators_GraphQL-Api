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
  end
end
