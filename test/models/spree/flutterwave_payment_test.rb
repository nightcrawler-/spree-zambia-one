# == Schema Information
#
# Table name: spree_flutterwave_payments
#
#  id                :bigint           not null, primary key
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  payment_method_id :bigint
#  user_id           :bigint
#
require "test_helper"

class Spree::FlutterwavePaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
