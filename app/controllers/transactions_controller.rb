class TransactionsController < ApplicationController

  def index
    @user = current_user
    @transactions = @user.transactions
  end

  def new
    @transaction = Transaction.new
  end


end
