class AddPositionToServicesAndClients < ActiveRecord::Migration
  def self.up
    add_column :services, :position, :integer
    add_column :clients, :position, :integer
  end

  def self.down
    remove_column :clients, :position
    remove_column :services, :position
  end
end
