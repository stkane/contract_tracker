class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :client
      t.string :opportunity_link
      t.date :contract_start
      t.date :contract_end

      t.timestamps null: false
    end
  end
end
