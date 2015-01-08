class Report
  include Mongoid::Document
  field :name, type: String
  field :location, type: String
  field :body, type: String
end
