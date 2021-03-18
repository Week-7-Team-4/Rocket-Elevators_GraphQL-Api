module Types
  class BuildingType < Types::BaseObject
    field :adm_contact_full_name, String, null: true
    field :adm_contact_email, String, null: true
    field :adm_contact_phone, String, null: true
    field :tech_contact_full_name, String, null: true
    field :tech_contact_email, String, null: true
    field :tech_contact_phone, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :customer_id, Integer, null: true
    field :address_id, String, null: true
    field :id, ID, null: false

    field :customer_info, [String], null: true

    def customer_info
      cust = Customer.where(id: object.customer_id)[0]
      user = User.where(id: cust.user_id)[0]

      return ["Customer Id: #{cust.id}", "Customer Company Name: " + cust.company_name, "Customer Company Contact Full Name: " + cust.cpy_contact_full_name, "Customer Technical Authority Full Name: " + cust.tech_authority_service_full_name, "Customer Company Description: " + cust.cpy_description]
    end
    # =======================missing a link from user to employee to finish my query here======================
    # , "Full Name: " + user.first_name + " " + user.last_name


    # Adds the queryable  field of building_detail_id in the Building type class
    field :building_detail_id, Integer, null: true

    # Adds the queryable  field of address_id in the Building type class
    field :address_id, Integer, null: true

    # Adds the queryable  field of admin_contact in the Building type class
    field :admin_contact, Types::EmployeeType, null: true

    # Adds the queryable  field of technical_contact in the Building type class
    field :technical_contact, Types::EmployeeType, null: true

    # Adds the queryable  field of address in the Building type class
    field :address, Types::AddressType, null: true

    # Adds the queryable  field of customer in the Building type class
    field :customer, Types::CustomerType, null: true

    # Adds the queryable  field of building_detail in the Building type class
    field :building_detail, Types::BuildingDetailType, null: true

    # Adds the queryable  field of interventions in the Building type class
    field :interventions, [Types::FactInterventionType], null: true

    # Defines the  admin_contact attribute where the BuildingType_id is equal to the admin_contact_id
    def admin_contact
      Employee.where(id: object.admin_contact_id)[0]
    end

    # Defines the  technical_contact attribute where the BuildingType_id is equal to the technical_contact_id 
    def technical_contact
      Employee.where(id: object.technical_contact_id)[0]
    end

    # Defines the address attribute where the BuildingType_id is equal to the address_id
    def address
      Address.where(id: object.address_id)[0]
    end

    # Defines the customer attribute where the BuildingType_id is equal to the customer_id
    def customer
      Customer.where(id: object.customer_id)[0]
    end

    # Defines the building_detail attribute where the BuildingType_id is equal to the building_detail_id
    def building_detail
      BuildingDetail.where(id: object.building_detail_id)[0]
    end

    # Defines the interventions attribute where the BuildingType_id is equal to the intervention id
    def all_interventions
      FactIntervention.where(building_id: object.id)
    end
  end
end
