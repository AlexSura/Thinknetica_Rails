class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.text :body, :null false
      t.integer :test_id
      t.reference :tests, :questions, foreign_key: true

      t.timestamps
    end

    #add_reference :tests, :questions, foreign_key: true
  end
end
