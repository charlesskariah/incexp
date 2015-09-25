class CreateJoinTableUserExpenseCategory < ActiveRecord::Migration
  def change
    create_join_table :users, :expense_categories do |t|
      #t.index [:user_id, :expense_category_id]
      # t.index [:expense_category_id, :user_id]
    end
  end
end
