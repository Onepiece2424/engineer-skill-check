class ChangeColumnDefaultToEmployees < ActiveRecord::Migration[6.1]
  def change
    change_column_default :employees, :news_posting_auth, from: true, to: false
  end
end
