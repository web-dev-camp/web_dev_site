class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :street
      t.string :city
      t.string :country

      t.text :school
      t.text :uni
      t.text :internship
      t.text :work
      t.text :projects

      t.text :soft_skills
      t.text :tech_skills

      t.text :interests
      t.text :motivation
      t.text :finance
      t.text :other

      t.integer :user_id

      t.timestamps null: false
    end
  end
end
