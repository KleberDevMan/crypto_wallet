class RemoveNameFromMiningType < ActiveRecord::Migration[5.2]
  def change
    remove_column :mining_types, :name, :string
  end
end
