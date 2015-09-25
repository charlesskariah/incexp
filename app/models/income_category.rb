class IncomeCategory < ActiveRecord::Base

  has_many :income
  belongs_to :user
  validates :source, :description,  presence: true

  def default_category_income(user)
    income_category_list = [
      [ "Salary", "Monthly salary" ],
      [ "Rent", "Building Rent recieved" ],
      [ "Bonus", "Monthly Bonus" ],
      [ "Donation", "From various NGO'S" ],
      [ "Interest", "From various Bank" ]
    ]

    income_category_list.each do |source, description|
      IncomeCategory.create( user: user, source: source, description: description )
    end
  end

end
