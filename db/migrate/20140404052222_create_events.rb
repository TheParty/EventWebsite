class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.string :time
      t.string :description
      t.integer :host

      t.timestamps
    end
  end
end