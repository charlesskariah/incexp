# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

income_category_list = [
  [ "Salary", "Monthly salary" ],
  [ "Rent", "Building Rent recieved" ],
  [ "Bonus", "Monthly Bonus" ],
  [ "Donation", "From various NGO'S" ],
  [ "Interest", "From various Bank" ]
]

income_category_list.each do |source, description|
  IncomeCategory.create( source: source, description: description )
end

puts "Income Category created"

expense_category_list = [
  [ "Transportation", "Monthly " ],
  [ "Education", "expense on education" ],
  [ "Entertainment", "Movies, trips" ],
  [ "Groceries", "Day today" ],
  [ "Medical", "Health expenses" ],
  [ "Food", "Food expenses" ]
]

expense_category_list.each do |source, description|
  ExpenseCategory.create( source: source, description: description )
end

puts "Expense category created"
