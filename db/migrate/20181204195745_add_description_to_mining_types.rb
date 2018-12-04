class AddDescriptionToMiningTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mining_types, :description, :string
  end
end
