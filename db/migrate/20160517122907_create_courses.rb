class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :extra
      t.date :start

      t.timestamps null: false
    end
    add_column :users, :course_id, :integer
  end
end
