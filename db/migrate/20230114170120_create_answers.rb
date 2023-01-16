class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.boolean :correct
      t.text :body
      t.integer :question_id

      t.timestamps
    end
    change_column_null(:answers, :body, false)
    change_column_default(:answers, :correct, from:nil, to: false)
    add_reference :questions, :answers, foreign_key: true
  end
end
