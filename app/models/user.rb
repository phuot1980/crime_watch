class User
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :city, type: String
  field :zip, type: Integer

  field :email, type: String
  field :password_digest, type: String
  attr_reader :password

  #setter method
  def password=(unencrypted_password)
    unless unencrypted_password.empty?
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end
  
  def authenticate(unencrypted_password)
    if BCrypt::Password.new(self.password_digest) == unencrypted_password
      return self
    else
      return false
    end
  end

  #here another way to validate presence of multiple things one line:
  # validates_presence_of :name, :email, :password

  #make sure that the name exist
  validates :name, presence: true
  #makes sure that email exist and is unique and declares the format
  validates :email, presence: true, uniqueness: { case_sensitive: false },
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }

  #
  validates :password, presence: true, length: { in: 6..20 }, confirmation: true

  has_many :reports
end
