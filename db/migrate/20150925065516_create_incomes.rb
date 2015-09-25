class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.belongs_to :user, index:true
      t.belongs_to :income_category, index:true
      t.datetime :date
      t.float :amount

      t.timestamps null: false
    end
  end
end
