class Building < ApplicationRecord
    belongs_to :customer
    belongs_to :employee
    has_many :batteries
    has_many :columns
    has_many :elevators
    has_one :building_detail
    has_one :address
end
