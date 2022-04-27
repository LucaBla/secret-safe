class AddValidationsToSecrets < ActiveRecord::Migration[7.0]
  def change
    change_column_null :secrets, :title, false
    change_column_null :secrets, :body, false
  end
end
