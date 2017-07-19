class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text "review2"
      t.integer "answer_id"
      t.timestamps null: false
    end
  end
end
