class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text "review"
      t.integer "samsung_id"
      t.timestamps null: false
    end
  end
end
