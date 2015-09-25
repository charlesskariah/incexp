class ExpenseCategory < ActiveRecord::Base

  has_many :expense
  has_and_belongs_to_many :users
  validates :source, :description,  presence: true

end
