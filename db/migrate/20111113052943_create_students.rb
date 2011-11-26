class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :firstName
      t.string :lastName
      t.integer :grade

      t.timestamps
    end
  end
end
