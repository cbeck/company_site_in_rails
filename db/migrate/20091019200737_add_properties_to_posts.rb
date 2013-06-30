class AddPropertiesToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :summary, :text
    add_column :posts, :read_more_link, :boolean
    add_column :posts, :resources, :text
    add_column :posts, :published, :boolean
  end

  def self.down
    remove_column :posts, :published
    remove_column :posts, :resources
    remove_column :posts, :read_more_link
    remove_column :posts, :summary
  end
end
