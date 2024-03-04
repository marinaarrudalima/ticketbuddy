class AddStatusToOrder < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :status, :integer, default: 0
  end
end
