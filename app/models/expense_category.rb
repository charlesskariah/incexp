class ExpenseCategory < ActiveRecord::Base

  has_many :expense
  belongs_to :user
  validates :source, :description,  presence: true


  def default_category_expense(user)
    expense_category_list = [
      [ "Transportation", "Monthly " ],
      [ "Education", "expense on education" ],
      [ "Entertainment", "Movies, trips" ],
      [ "Groceries", "Day today" ],
      [ "Medical", "Health expenses" ],
      [ "Food", "Food expenses" ]
    ]

    expense_category_list.each do |source, description|
      ExpenseCategory.create( user: user, source: source, description: description )
    end
  end

end
