class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age

      t.timestamps
      #указать внешний ключ к категориям
    end
    change_column_null(:users, :name, :age, false)
  end
end
