class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :location
      t.string :biography
      t.integer :pastEvents
      t.integer :futureEvents

      t.timestamps
    end
  end
end
