class Expense < ActiveRecord::Base

  belongs_to :user
  belongs_to :expense_category
  has_many :transactions, as: :trans

  validates :amount, :date, :expense_category, :user,  presence: true


 def self.search_by_date_and_category(user, category_id, from_date, to_date )
   user.expense.where("expense_category_id IN (?) and date >= (?) and date <= (?)",category_id, from_date.to_date, to_date.to_date).order('date DESC')
 end

 def self.search_by_category(user, category_id)
  user.expense.where("expense_category_id IN (?)",category_id).order('date DESC')
 end

end
