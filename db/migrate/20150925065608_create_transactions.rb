class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :trans, polymorphic: true, index: true
      t.belongs_to :user, index:true

      t.timestamps null: false
    end
  end
end
