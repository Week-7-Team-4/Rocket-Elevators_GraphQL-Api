module Types
  class BuildingDetailType < Types::BaseObject
    field :info_key, String, null: true
    field :value, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :building_id, Integer, null: true
  end
end
