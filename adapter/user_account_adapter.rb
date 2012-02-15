require 'user_account'

class UserAccountAdapter < UserAccount
  attr_reader :name, :location, :contact
  
  def initialize(user_account)
    @name = user_account.first_name + " "+ user_account.last_name
    @location = user_account.address
    @contact = user_account.phone
  end
end