class UserAccount
  attr_reader :first_name, :last_name, :address, :phone
  def initialize(first_name, last_name, address, phone)
    @first_name = first_name
    @last_name = last_name
    @address = address
    @phone = phone    
  end  
end