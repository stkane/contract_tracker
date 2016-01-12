class AddUserIdToContracts < ActiveRecord::Migration
  def change
  	add_column :contracts, :user_id, :integer
  	add_index :contracts, :user_id
  end
end
