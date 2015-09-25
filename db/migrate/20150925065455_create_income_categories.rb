class CreateIncomeCategories < ActiveRecord::Migration
  def change
    create_table :income_categories do |t|
      t.string :source
      t.text   :description

      t.timestamps null: false
    end
  end
end
