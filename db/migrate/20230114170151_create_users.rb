class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, :null false
      t.integer :age, :null false

      t.timestamps
      #указать внешний ключ к категориям
    end
    #change_column_null(:users, :name, :age, false)
  end
end
