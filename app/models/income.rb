class Income < ActiveRecord::Base

  belongs_to :user
  belongs_to :income_category
  has_many :transactions, as: :trans

  validates :amount, :date, :income_category, :user,  presence: true

end
