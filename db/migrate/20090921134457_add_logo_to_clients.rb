class AddLogoToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :logo_url, :string
    add_column :clients, :featured, :boolean
    add_column :clients, :testamonial, :string
  end

  def self.down
    remove_column :clients, :logo_url
    remove_column :clients, :featured
    remove_column :clients, :testamonial
  end
end
