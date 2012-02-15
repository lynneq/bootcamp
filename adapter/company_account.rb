class CompanyAccount
  attr_reader :name, :location, :contact
  
  def initialize(name, location, contact)
    @name = name
    @location = location
    @contact = contact
  end
end