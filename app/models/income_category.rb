class IncomeCategory < ActiveRecord::Base

  has_many :income
  has_and_belongs_to_many :users
  validates :source, :description,  presence: true

end
