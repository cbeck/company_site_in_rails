class CreateServiceAssignments < ActiveRecord::Migration
  def self.up
    create_table :service_assignments do |t|
      t.integer :service_id
      t.integer :service_grou_id
      t.boolean :enabled

      t.timestamps
    end
  end

  def self.down
    drop_table :service_assignments
  end
end
