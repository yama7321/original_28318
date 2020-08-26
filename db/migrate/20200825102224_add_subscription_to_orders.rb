class AddSubscriptionToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :status, :boolean, default: false, null: false
    add_column :orders, :subscription_id, :string
  end
end
