class CreateJoinTableTestsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tests_users, id: false do |t|
      t.integer :test_id
      t.integer :user_id
    end
  end
end
