class AddUsersNameAgeNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:users, :name, :age, false)
  end
end
