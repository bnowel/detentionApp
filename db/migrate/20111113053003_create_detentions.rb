class CreateDetentions < ActiveRecord::Migration
  def change
    create_table :detentions do |t|
      t.references :student
      t.references :teacher
      t.text :reason

      t.timestamps
    end
    add_index :detentions, :student_id
    add_index :detentions, :teacher_id
  end
end
