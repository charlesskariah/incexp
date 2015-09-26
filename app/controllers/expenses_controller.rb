class ExpensesController < ApplicationController

  def new
    category_list
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      @expense.transactions.create(date: @expense.date, user_id: current_user.id)
      flash[:success] = "New Expense is added"
      redirect_to new_expense_path
    else
      category_list
      render :new
    end
  end


  def category_list
    @categories = current_user.expense_categories
  end

  private

  def expense_params
    params.require(:expense).permit(:amount,:expense_category_id, :date)
      .merge( user_id: current_user.id)
  end

end
