class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.belongs_to :user, index:true
      t.belongs_to :expense_category, index:true
      t.datetime :date
      t.float :amount

      t.timestamps null: false
    end
  end
end
