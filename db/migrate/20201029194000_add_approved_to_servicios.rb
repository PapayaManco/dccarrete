class AddApprovedToServicios < ActiveRecord::Migration[5.2]
  def change
    add_column :servicios, :approved, :bool, :default => true
  end
end
