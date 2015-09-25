class IncomeCategoriesController < ApplicationController

  def new
    @income_category = IncomeCategory.new
  end

  def create
    @income_category = IncomeCategory.new(category_params)
    if @income_category.save
      flash[:success] = "New Income category is added"
      redirect_to new_income_category_path
    else
      render :new
    end
  end

  def index
    @income_categories = current_user.income_categories
  end

  def edit
    @income_category = IncomeCategory.find(params[:id])
  end

  def update
    @income_category = IncomeCategory.find(params[:id])
    if @income_category.update_attributes(category_params)
         redirect_to income_categories_path
      else
         render :edit
      end
  end

  private

  def category_params
    params.require(:income_category).permit(:source,:description)
      .merge( user_id: current_user.id)
  end


end
