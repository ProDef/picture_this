class AddUserIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :first_name, :text
    add_column :profiles, :second_name, :text
    add_column :profiles, :home_town, :text
    add_column :profiles, :date_of_birth, :datetime
    add_column :profiles, :gender, :text
  end
end
