# frozen_string_literal: true

# Migration for clients
class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name, null: false, limit: 128
      t.string :phone_number, null: false, limit: 16
      t.string :email, limit: 256

      t.timestamps
    end
    
    add_index :clients, :phone_number, unique: true
    add_index :clients, :email
  end
end
