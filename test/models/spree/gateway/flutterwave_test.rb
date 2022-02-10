# == Schema Information
#
# Table name: spree_payment_methods
#
#  id               :bigint           not null, primary key
#  active           :boolean          default(TRUE)
#  auto_capture     :boolean
#  deleted_at       :datetime
#  description      :text
#  display_on       :string           default("both")
#  name             :string
#  position         :integer          default(0)
#  preferences      :text
#  private_metadata :jsonb
#  public_metadata  :jsonb
#  type             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_spree_payment_methods_on_id           (id)
#  index_spree_payment_methods_on_id_and_type  (id,type)
#
require "test_helper"

class Spree::Gateway::FlutterwaveTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
