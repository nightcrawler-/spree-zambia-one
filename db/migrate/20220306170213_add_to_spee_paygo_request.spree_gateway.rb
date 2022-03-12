# frozen_string_literal: true
# This migration comes from spree_gateway (originally 20220306162948)

class AddToSpeePaygoRequest < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_paygo_requests, :payment_method_id, :bigint
    add_column :spree_paygo_requests, :user_id, :bigint
  end
end
