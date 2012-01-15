class CreateConsequencesNotices < ActiveRecord::Migration
  def change
    create_table :consequences_notices, :id => false do |t|
      t.references :consequence
      t.references :notice

      t.timestamps
    end
  end
end
