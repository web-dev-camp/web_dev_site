class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.integer :primary_choice_course_id
      t.integer :secondary_choice_course_id
      t.string :plan
      t.string :discount_code
      t.text :comment
      t.integer :user_id
      t.date :sent

      t.date :accepted

      t.integer :funds_received

      t.timestamps null: false
    end
  end
end
