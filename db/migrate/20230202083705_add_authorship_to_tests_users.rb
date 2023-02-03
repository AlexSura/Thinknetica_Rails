class AddAuthorshipToTestsUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :tests_users, :authorship_id, :boolean
  end
end
