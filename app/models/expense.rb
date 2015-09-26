class Expense < ActiveRecord::Base

  belongs_to :user
  belongs_to :expense_category
  has_many :transactions, as: :trans

  validates :amount, :date, :expense_category, :user,  presence: true


end
