class AccountDetail
  def initialize(account)
    @account = account    
  end
  
  def print_detail
    outStr = @account.name+", "+@account.location+", "+@account.contact+"\n"
    # puts outStr
  end
end