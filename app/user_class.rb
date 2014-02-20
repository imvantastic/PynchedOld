class User
  attr_accessor :name, :email, :username, :password

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
	@username = attributes[:username]
	@password = attributes[:password]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end