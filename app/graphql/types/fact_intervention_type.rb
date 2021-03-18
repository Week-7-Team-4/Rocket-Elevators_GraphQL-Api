module Types
  class FactInterventionType < Types::BaseObject
    field :employee_id, Integer, null: true
    field :building_id, Integer, null: true
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :start_interv, Integer, null: true
    field :stop_interv, Integer, null: true
    field :result, String, null: true
    field :reports, String, null: true
    field :status, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
