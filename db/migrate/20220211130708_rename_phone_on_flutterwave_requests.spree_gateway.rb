# This migration comes from spree_gateway (originally 20220211130259)
class RenamePhoneOnFlutterwaveRequests < ActiveRecord::Migration[6.1]
  def change
    rename_column :spree_flutterwave_requests, :phone, :payment_instrument_number
  end
end
