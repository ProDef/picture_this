class AddUserToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :user, :string
  end
end
