$LOAD_PATH << File.dirname(__FILE__)

require 'test/unit'
require 'user_account_adapter'
require 'user_account'
require 'company_account'
require 'account_detail'

class AccountDetailTest < Test::Unit::TestCase
  def test_account_detail_print_out_user_account_information_by_using_adapter
    user_account = UserAccount.new("lina", "qu", "Chicago", "312-999-9999")
    user_account_adapter = UserAccountAdapter.new(user_account)
    
    account_detail = AccountDetail.new(user_account_adapter)
    assert_equal "lina qu, Chicago, 312-999-9999\n", account_detail.print_detail    
  end
  
  def test_account_detail_print_out_company_account_information
    company_account = CompanyAccount.new("thoughtworks","Chicago", "312-777-7777")
    
    account_detail = AccountDetail.new(company_account)
    assert_equal "thoughtworks, Chicago, 312-777-7777\n", account_detail.print_detail
  end
end