module Types
  class EmployeeType < Types::BaseObject
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :function, String, null: true
    field :phone, String, null: true
    field :email, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :user_id, Integer, null: true
  end
end
