class AddAnswersBodyNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:answers, :body, false)
    change_column_default(:answers, :correct, from:nil, to: false)
  end
end
