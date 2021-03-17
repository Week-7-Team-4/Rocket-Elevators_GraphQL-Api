module Types
  class UserType < Types::BaseObject
    field :email, String, null: true
    field :encrypted_password, String, null: true
    field :reset_password_token, String, null: true
    field :reset_password_sent_at, String, null: true
    field :remember_created_at, String, null: true
    field :created_at, String, null: true
    field :updated_at, String, null: true
    field :admin, Boolean, null: true
  end
end
