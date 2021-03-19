module Types
  class CustomerType < Types::BaseObject
    field :date_create, String, null: true
    field :company_name, String, null: true
    field :cpy_contact_phone, String, null: true
    field :cpy_contact_full_name, String, null: true
    field :cpy_contact_email, String, null: true
    field :cpy_description, String, null: true
    field :tech_authority_service_full_name, String, null: true
    field :tech_authority_service_phone, String, null: true
    field :tech_manager_service_email, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :user_id, Integer, null: true
    field :address_id, Integer, null: true
    field :id, ID, null: false

    # Adds the queryable field of first_name in the customer type class
    field :first_name, String, null: true

     # Defines the first_name attribute where the customer_id is equal to the user_id
    def first_name # same as field name ;
      User.where(id: object.user_id)[0].first_name
    end

    # Adds the queryable field of last_name in the customer type class
    field :last_name, String, null: true

     # Defines the last_name attribute where the customer_id is equal to the user_id
    def last_name # same as field name ;
      User.where(id: object.user_id)[0].last_name
    end

  

    # Adds the queryable field of user in the customer type class
    field :user, Types::UserType, null: true

    # Defines the user attribute where the address_id is equal to the user_id
    def user
      User.where(id: object.user_id)[0]
    end
  end
end
