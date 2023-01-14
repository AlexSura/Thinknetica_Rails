class AddTestsTitleLevelNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tests, :title, :level, false)
    change_column_default(:tests, :level, from:nil, to: false)
  end
end
