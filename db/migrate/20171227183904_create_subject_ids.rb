class CreateSubjectIds < ActiveRecord::Migration[5.0]
  def up
    create_table :subject_ids do |t|
    	t.column "name", :string
    	t.column "position", :integer
    	t.column "visible", :boolean, :default => false

      t.timestamps
    end
  end
  def down
  	drop_table :subject_ids
  end
end
