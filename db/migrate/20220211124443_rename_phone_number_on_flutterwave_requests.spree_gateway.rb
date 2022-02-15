# This migration comes from spree_gateway (originally 20220211124120)
class RenamePhoneNumberOnFlutterwaveRequests < ActiveRecord::Migration[6.1]
  def change
    rename_column :spree_flutterwave_requests, :phone_number, :phone
  end
end
