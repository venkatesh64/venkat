class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|
    	t.integer "subject_ids"
    	t.column "name", :string
    	t.column "permalink", :string
    	t.column "position", :integer
    	t.column "visible", :boolean, :default => false

      t.timestamps
    end
    add_index("pages", "subject_ids")
    add_index("pages","permalink")
  end

  def down
  	drop_table :pages
  end
end
