class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :title, :null false
      t.integer :level, :null false, :default => 0 
      t.integer :category_id
      t.reference :categories, :tests, foreign_key: true    
        
      t.timestamps
    end
    #add_reference :categories, :tests, foreign_key: true
  end
end
