class CreateMode2s < ActiveRecord::Migration
  def change
    create_table :mode2s do |t|
      t.text :title
      t.text :content
      t.timestamps null: false
    end
  end
end
