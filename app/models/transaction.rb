class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :trans, polymorphic: true

  def self.bank_statement(user,from_date,to_date)
    user.transactions.includes(:trans).where(" date >= (?) and date <= (?)", from_date.to_date, to_date.to_date).order('date DESC')
  end

end
