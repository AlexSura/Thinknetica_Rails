class CreateJoinTableTestsUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :tests_users, id: false do |t|
      t.references :tests, foreign_key: true
      t.references :users, foreign_key: true
    end
  end
end
