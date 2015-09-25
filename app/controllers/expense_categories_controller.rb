class ExpenseCategoriesController < ApplicationController

  def new
    @expense_category = ExpenseCategory.new
  end

  def create
    @expense_category = ExpenseCategory.new(category_params)
    if @expense_category.save
      flash[:success] = "New Expense category is added"
      redirect_to new_expense_category_path
    else
      render :new
    end
  end

  def index
    @expense_categories = current_user.expense_categories
  end

  def edit
    @expense_category = ExpenseCategory.find(params[:id])
  end

  def update
    @expense_category = ExpenseCategory.find(params[:id])
    if @expense_category.update_attributes(category_params)
         redirect_to expense_categories_path
      else
         render :edit
      end
  end

  private

  def category_params
    params.require(:expense_category).permit(:source,:description)
      .merge( user_id: current_user.id)
  end


end
