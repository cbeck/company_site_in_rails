class AddStoryUrlToClients < ActiveRecord::Migration
  def self.up
    add_column :clients, :story_url, :string
  end

  def self.down
    remove_column :clients, :story_url
  end
end
