class CreateExpenseCategories < ActiveRecord::Migration
  def change
    create_table :expense_categories do |t|
      t.string :source
      t.text   :description

      t.timestamps null: false
    end
  end
end
