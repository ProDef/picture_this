class CreateMessagingUsers < ActiveRecord::Migration
  def change
    create_table :messaging_users do |t|

      t.timestamps
    end
  end
end
