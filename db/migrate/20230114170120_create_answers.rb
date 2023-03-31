class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.boolean :correct, :default => false
      t.text :body, null: false
      t.references :question, foreign_key: true

      t.timestamps

    end
    #change_column_null(:answers, :body, false)
    #change_column_default(:answers, :correct, from:nil, to: false)
    #add_reference :questions, :answers, foreign_key: true
  end
end
