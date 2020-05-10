class ChangeColumnDefault < ActiveRecord::Migration[6.0]
  def change
    change_column_default(:users, :wallet, from: nil, to: 0)
  end
end
