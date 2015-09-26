class DashBoardsController < ApplicationController

  def index
    user_status = { }
    user_status[:month_income] = current_month_income
    user_status[:month_expense] = current_month_expense
    user_status[:diff] = user_status[:month_income] - user_status[:month_expense]
    @user_monthly_status = user_status
  end

  def current_month_income
    monthly_income = current_user.income.where('extract(month  from date) = ?', Date.today.strftime("%m")).map{|x| x.amount}.inject(&:+)
    monthly_income ? monthly_income : 0
  end

  def current_month_expense
    monthly_expense = current_user.expense.where('extract(month  from date) = ?', Date.today.strftime("%m")).map{|x| x.amount}.inject(&:+)
    monthly_expense ? monthly_expense : 0
  end

end
