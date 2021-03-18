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
    # field :id ,Integer, null: true
   
   
    # field :intervention_info, [String], null: true

    # def intervention_info
    #   return ["Id: #{object.id}", "Building Id: #{object.building_id}", "Start Time: #{object.start_intervention}", "End Time: #{object.end_intervention}", "Result: #{object.result}", "Report: #{object.report}", "Status: #{object.status}"]
    # end

    # field :building_detail, Types::BuildingDetailType, null: true

    # def building_detail
    #   build = Building.where(id: object.building_id)[0]
    #   return BuildingDetail.where(building_id: build.id)[0]
    # end

    # # Adds the queryable field of building in the FactIntervention type class
    # field :building, Types::BuildingType, null: true

    # # Defines the building attribute where the FactIntervention_id  is equal to the building id
    # def building
    #   Building.where(id: object.building_id)[0]
    # end

    # # Adds the queryable field of employee in the FactIntervention type class
    # field :employee, Types::EmployeeType, null: true

    # # Defines the employee attribute where the FactIntervention_id is equal to the employee_id
    # def employee
    #   Employee.where(id: object.employee_id)[0]
    # end
    
    # # Adds the queryable field of address in the FactIntervention type class
    # field :address, Types::AddressType, null: true

    # # Defines the address attribute where the FactIntervention_id  is equal to the building id
    # def address
    #   Address.where(building_id: object.building_id)[0]
    # end
  end
end
