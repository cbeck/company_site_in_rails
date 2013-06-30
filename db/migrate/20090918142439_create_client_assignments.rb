class CreateClientAssignments < ActiveRecord::Migration
  def self.up
    create_table :client_assignments do |t|
      t.integer :client_id
      t.integer :service_group_id
      t.boolean :enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :client_assignments
  end
end
