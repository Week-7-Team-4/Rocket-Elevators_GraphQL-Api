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
    field :employees, [as], null: false
    def all_links
      Link.all
    end
  end
end


# EXAMPLE START #

    # /users
    # field :users, [Types::UserType], null: false
    # 
    # def users
    #   User.all
    # end
    
    # /user(id:)
    # field :user, Types::UserType, null: false do
    #   argument :id, ID, required: true
    # end
    # 
    # def user(id:)
    #   User.find(id)
    # end

    # EXAMPLE END #