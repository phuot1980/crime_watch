class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :address, type: String
  field :city, type: String
  field :zip, type: Integer
end
