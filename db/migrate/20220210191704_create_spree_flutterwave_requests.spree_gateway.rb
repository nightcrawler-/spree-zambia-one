# This migration comes from spree_gateway (originally 20220210191157)
class CreateSpreeFlutterwaveRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_flutterwave_requests do |t|
      t.bigint :payment_method_id
      t.bigint :user_id

      t.timestamps
    end
  end
end
