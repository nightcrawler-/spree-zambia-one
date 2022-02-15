# This migration comes from spree_gateway (originally 20220211115958)
class AddPhoneAndNameToFlutterwaveRequests < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_flutterwave_requests, :phone_number, :string
    add_column :spree_flutterwave_requests, :name, :string
  end
end
