class CreateJoinTableUserIncomeCaategory < ActiveRecord::Migration
  def change
    create_join_table :users, :income_categories do |t|
      #t.index [:user_id, :income_category_id]
      # t.index [:income_category_id, :user_id]
    end
  end
end
