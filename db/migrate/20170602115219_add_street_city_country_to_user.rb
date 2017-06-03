class AddStreetCityCountryToUser < ActiveRecord::Migration[5.0]

  def up
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    puts "UP"
    User.all.each do |user|
      resume = user.resume
      user.street = resume.street
      user.city = resume.city
      user.country = resume.country
      user.save
    end
  end

  def down
    remove_column :users, :street
    remove_column :users, :city
    remove_column :users, :country
    puts "DOWN"
  end

end
