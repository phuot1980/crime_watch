class Report
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :address, type: String
  field :city, type: String
  field :state, type: String
  field :zip, type: String
  field :body, type: String
  belongs_to :user

	def date_published
  	# self is implied and is not needed. this is an instance method
  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end

  def full_address
    "#{self.address.titleize}\n#{self.city.capitalize}, #{self.state.upcase}. #{self.zip}"
  end
end
