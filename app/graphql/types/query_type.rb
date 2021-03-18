module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_links, [LinkType], null: false
    def all_links
      Link.all
    end

    field :address, [AddressType], null: false
    def address
      Address.all
    end

    field :battery, [BatteryType], null: false
    def battery
      Battery.all
    end

    field :building, [BuildingType], null: false
    def building
      Building.all
    end

    field :column, [ColumnType], null: false
    def column
      Column.all
    end

    field :customer, [CustomerType], null: false
    def customer
      Customer.all
    end

    field :elevator, [ElevatorType], null: false
    def elevator 
      Elevator.all
    end

    field :employee, [EmployeeType], null: false
    def employee
      Employee.all
    end
    
    field :all_interventions, [FactInterventionType], null: false
    def all_interventions
      FactIntervention.all
    end
    

    field :all_interventions, Types::FactInterventionType, null: false do
      argument :id, ID, required: true
    end
    def all_interventions(id:)
      FactIntervention.find(id)
    end

    field :employee, [EmployeeType], null: false do
      argument :userId, Integer, required: true
    end
    def employee(userId:)
      Employee.find(userId)
    end
    # field :lead, [LeadType], null: false
    # def lead
    #   Lead.all
    # end

    #   field quote, [QuoteType], null: false
    # def quote
    #   Quote.all
    # end

    # field user, [UserType], null: false
    # def user
    #   User.all
    # end
        # it doesnt work whyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy

    field :buildingdetail, [BuildingDetailType], null: false
    def buildingdetail
      BuildingDetail.all
    end

  end
end


# EXAMPLE START #

    # /users
    # field :users, [Types::UserType], null: false
    
    # def users
    #   User.all
    # end
    
    # /user(id:)
    # field :user, Types::UserType, null: false do
    #   argument :id, ID, required: true
    # end
    
    # def user(id:)
    #   User.find(id)
    # end

    # EXAMPLE END #