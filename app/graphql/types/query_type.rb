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
    # field :building_detail, [Building_detailType], null: false
    # def building_detail
    #   Building_details.all
    # end
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