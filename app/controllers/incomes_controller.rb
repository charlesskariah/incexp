class IncomesController < ApplicationController

   def new
    category_list
    @income = Income.new
  end

  def create
    @income = Income.new(income_params)
    if @income.save
      @income.transactions.create(date: @income.date,user_id: current_user.id)
      flash[:success] = "New Income is added"
      redirect_to new_income_path
    else
      category_list
      render :new
    end
  end


  def category_list
    @categories = current_user.income_categories
  end

  private

  def income_params
    params.require(:income).permit(:amount,:income_category_id, :date)
      .merge( user_id: current_user.id)
  end

end
