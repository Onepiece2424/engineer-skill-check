class ChangeColumnDefaultEmployees < ActiveRecord::Migration[6.1]
  def change
    change_column_default :employees, :news_posting_auth, default: false
  end
end
