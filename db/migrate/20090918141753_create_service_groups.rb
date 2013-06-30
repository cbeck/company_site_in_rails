class CreateServiceGroups < ActiveRecord::Migration
  def self.up
    create_table :service_groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :service_groups
  end
end
