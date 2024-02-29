class AddColumnToTicket < ActiveRecord::Migration[7.1]
  def change
    add_column :tickets, :image_url, :string
  end
end
