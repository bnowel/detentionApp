class CreateConsequences < ActiveRecord::Migration
  def change
    create_table :consequences do |t|
      t.integer :detention_count
      t.string :description
      t.string :notification_list

      t.timestamps
    end
  end
end
