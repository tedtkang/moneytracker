require 'test_helper'

class TransactionTest < ActiveSupport::TestCase

  def setup
    @user = users(:ted)
    @transaction = @user.transactions.build(amount: 15, description: "test")
  end

  test "should be valid" do
    assert @transaction.valid?
  end

  test "user_id should be present" do
    @transaction.user_id = nil
    assert_not @transaction.valid?
  end

end
