class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.integer :primary_choice_id
      t.integer :secondary_choice_id
      t.text :comment
      t.integer :user_id
      t.date :sent

      t.timestamps null: false
    end
  end
end
