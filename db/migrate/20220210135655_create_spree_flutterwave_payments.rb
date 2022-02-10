class CreateSpreeFlutterwavePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_flutterwave_payments do |t|
      t.bigint :payment_method_id
      t.bigint :user_id

      t.timestamps
    end
  end
end
