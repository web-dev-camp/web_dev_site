class RemoveStreetCityCountryFromResume < ActiveRecord::Migration[5.0]
  def change
    remove_column :resumes, :street, :string
    remove_column :resumes, :city, :string
    remove_column :resumes, :country, :string
  end
end
