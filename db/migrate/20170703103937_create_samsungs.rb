class CreateSamsungs < ActiveRecord::Migration
  def change
    create_table :samsungs do |t|
      t.text :title
      t.text :content
      
      t.timestamps null: false
    end
  end
end
