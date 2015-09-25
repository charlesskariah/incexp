class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  validates :name,  presence: true

  has_and_belongs_to_many :income_categories
  has_and_belongs_to_many :expense_categories
  has_many :income
  has_many :expense
  has_many :transactions

end
