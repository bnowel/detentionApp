class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
