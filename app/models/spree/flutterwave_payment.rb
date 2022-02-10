class Spree::FlutterwavePayment < Spree::Base

    attr_accessor :cc_type # Dunno if this is necessary here, will test baadae

    belongs_to :payment_method

    belongs_to :user, class_name: Spree.user_class.to_s, foreign_key: 'user_id', optional: true

    has_many :payments, as: :source

end
