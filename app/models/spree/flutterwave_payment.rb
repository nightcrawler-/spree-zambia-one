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
class Spree::FlutterwavePayment < Spree::Base

    attr_accessor :cc_type # Dunno if this is necessary here, will test baadae

    belongs_to :payment_method

    belongs_to :user, class_name: Spree.user_class.to_s, foreign_key: 'user_id', optional: true

    has_many :payments, as: :source

end
