class CreatePratosRestaurantesJoinTable < ActiveRecord::Migration
  def self.up
    create_table :pratos_restaurantes, :id => false do |t|
        t.integer :pratos_id
        t.integer :restaurantes_id

        t.timestamps
  end
end
end
