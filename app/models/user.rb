class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :name,  presence: true


  has_many :income_categories
  has_many :expense_categories
  has_many :income
  has_many :expense
  has_many :transactions

  after_create :populate_categories

  def populate_categories
    IncomeCategory.new.default_category_income(self)
    ExpenseCategory.new.default_category_expense(self)
  end

end
