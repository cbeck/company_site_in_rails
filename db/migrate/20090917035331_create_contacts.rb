class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :url
      t.text :message
      t.string :referred_by

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
