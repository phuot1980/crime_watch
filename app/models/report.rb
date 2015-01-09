class Report
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :location, type: String
  field :body, type: String

	def date_published
  	# self is implied and is not needed. this is an instance method
  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end
  
  belongs_to :user
end
