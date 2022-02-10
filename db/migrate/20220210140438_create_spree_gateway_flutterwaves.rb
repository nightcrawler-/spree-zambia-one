class CreateSpreeGatewayFlutterwaves < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_gateway_flutterwaves do |t|

      t.timestamps
    end
  end
end
