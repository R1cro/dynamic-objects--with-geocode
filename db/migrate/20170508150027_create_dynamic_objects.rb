class CreateDynamicObjects < ActiveRecord::Migration[5.0]
  def change
    create_table :dynamic_objects do |t|
      t.string :name

      t.integer	:location_id
      t.timestamps
    end
  end
end
