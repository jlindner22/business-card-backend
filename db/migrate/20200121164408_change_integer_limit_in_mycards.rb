class ChangeIntegerLimitInMycards < ActiveRecord::Migration[6.0]
  def change
    change_column :mycards, :phone_number, :integer, limit: 8
  end
end
