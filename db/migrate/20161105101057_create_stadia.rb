class CreateStadia < ActiveRecord::Migration[5.0]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :location
      t.string :coordinates
      t.string :public_transit
      t.string :owner
      t.string :operator
      t.integer :executive_suites
      t.integer :capacity
      t.integer :record_attendance
      t.string :field_size
      t.string :surface
      t.datetime :broke_ground
      t.datetime :opened
      t.integer :construction_cost
      t.string :architect
      t.string :structural_engineer
      t.string :services_engineer
      t.string :general_contractor
      t.string :background
      t.string :link_detail

      t.timestamps
    end
  end
end
