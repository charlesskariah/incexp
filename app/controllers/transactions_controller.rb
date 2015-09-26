class TransactionsController < ApplicationController

  def index
  end

  def bank_statement
    if params[:From_date].present? && params[:To_date].present?
      @transactions = Transaction.bank_statement(current_user, params[:From_date], params[:To_date])
    end
  end
end
