class TransactionsController < ApplicationController

  def index
    @user = current_user || User.new
    @transactions = @user.transactions
  end

  def new
    @transaction = Transaction.new
  end


end
