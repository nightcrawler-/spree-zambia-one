class Spree::Gateway::Flutterwave < Spree::Gateway

    attr_accessor   :server, :test_mode, :merchant_id, :secret_key, :publishable_key, :password, :user, :secure_profile_api_key

    def provider_class
        Spree::Gateway::Flutterwave
    end

    def payment_source_class
        Spree::FlutterwavePayment
    end

    def auto_capture?
        true
    end

    def method_type
        'flutterwave_payment'
    end

    def purchase(amount, transaction_details, options = {})

        # Over here is where the payments will be made from the respective wallet based on user's balance
        # Possibly redirect to flutterwave or make use of their gem/APIs
        # Ideally to initiate a payment somehow and return the active billing state
        # Check other gateway implementations, esp callback based/async/background/other service
        
        Rails.logger.info "purchase options: #{options.inspect}"

        options[:subtotal] = options[:subtotal]/100 # The subtotal is in cents!!

        Rails.logger.info "purchase options after aug: #{options.inspect}"

        if options[:subtotal].to_f > 20000.to_f
            ActiveMerchant::Billing::Response.new(false, "Failed, not enough cash in your mykeekapu wallet, please topup #{options[:subtotal].to_f - 20000.to_f} more", {}, {})
        else
            ActiveMerchant::Billing::Response.new(true, 'Success', {}, {})
        end

    end

end
