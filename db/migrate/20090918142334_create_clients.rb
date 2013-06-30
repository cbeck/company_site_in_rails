class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name
      t.string :url
      t.text :description
      t.text :story
      t.string :image_url
      t.text :notes
      t.string :short_name
      t.string :ticker

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
