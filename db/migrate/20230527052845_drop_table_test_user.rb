class DropTableTestUser < ActiveRecord::Migration[6.1]
  def up
    drop_table :tests_users, if_exists: true
  end

  def down
  end
end