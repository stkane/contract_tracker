class CreateStatementOfWorks < ActiveRecord::Migration
  def change
    create_table :statement_of_works do |t|
      t.references :contract, index: true, foreign_key: true
      t.text :description
      t.boolean :product1
      t.boolean :product2
      t.boolean :product3

      t.timestamps null: false
    end
  end
end
