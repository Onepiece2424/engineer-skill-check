class ChangeDataNewsPostingAuthToEmployee < ActiveRecord::Migration[6.1]
  def change
    change_column_null :employees, :news_posting_auth, null: false
  end
end
