class CreateExpenseCategories < ActiveRecord::Migration
  def change
    create_table :expense_categories do |t|
      t.belongs_to :user, index:true
      t.string :source
      t.text   :description

      t.timestamps null: false
    end
  end
end
