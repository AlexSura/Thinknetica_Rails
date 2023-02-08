class AddAuthorToTests < ActiveRecord::Migration[6.1]
  def change
    add_reference :tests, :author_id, foreign_key: true
  end
end
