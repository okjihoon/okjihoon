class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.text :title
      t.text :content
      
      t.timestamps null: false
    end
  end
end
