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
    field :id, ID, null: false
    

    # Adds the queryable field of user in the employee type class
    field :user, Types::UserType, null: true

     # Defines the user attribute where the employee_id is equal to the user_id
    def user
      User.where(id: object.user_id)[0]
    end

    # Adds the queryable field of interventions in the employee type class
    field :interventions, [Types::FactInterventionType], null: true

    # Defines the interventions attribute where the employee_id is equal to the employee_id
    def alli
      FactIntervention.where(employee_id: object.id)
    end
  end
end
