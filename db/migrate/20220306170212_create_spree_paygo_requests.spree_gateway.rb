# frozen_string_literal: true
# This migration comes from spree_gateway (originally 20220306162530)

class CreateSpreePaygoRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :spree_paygo_requests do |t|
      t.string :account_no
      t.string :msisdn

      t.timestamps
    end
  end
end
