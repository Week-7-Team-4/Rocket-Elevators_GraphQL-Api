module Types
  class QuoteType < Types::BaseObject
    field :number_of_apartments, Integer, null: true
    field :number_of_floors, Integer, null: true
    field :number_of_basements, Integer, null: true
    field :number_of_companies, Integer, null: true
    field :number_of_corporations, Integer, null: true
    field :number_of_parking, Integer, null: true
    field :number_of_elevators, Integer, null: true
    field :maximum_occupancy, Integer, null: true
    field :elevator_amount, Integer, null: true
    field :product_line, String, null: true
    field :quotes_name, String, null: true
    field :quotes_email, String, null: true
    field :quotes_company_name, String, null: true
    field :install_fees, String, null: true
    field :total_price, String, null: true
    field :unit_price, String, null: true
    field :building_type, String, null: true
    field :final_price, String, null: true
    field :date, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
  end
end
