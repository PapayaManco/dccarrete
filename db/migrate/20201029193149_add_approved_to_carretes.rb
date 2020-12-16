class AddApprovedToCarretes < ActiveRecord::Migration[5.2]
  def change
    add_column :carretes, :approved, :bool, :default => false
  end
end
