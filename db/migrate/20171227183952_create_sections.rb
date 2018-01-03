class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
    	t.integer "page_id"
    	t.column "name", :string
    	t.column "position", :string
    	t.column "visible", :boolean, :default => false
    	t.column "content_type", :string
    	t.column "content", :text

      t.timestamps
    end
  end
end
