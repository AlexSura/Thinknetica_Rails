class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title
      t.integer :level
      t.integer :category_id

      t.timestamps
    end
    add_reference :categories, :tests, foreign_key: true

    change_column_null(:tests, :level, false)
    change_column_null(:tests, :title,  false)
    change_column_default(:tests, :level, from:nil, to: false)

  end
end
