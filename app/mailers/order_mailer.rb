class OrderMailer < ApplicationMailer
    default from: ENV["MAIL_ADDRESS"]
 
    def order_success(customer)
          mail(
            to: '',
            subject: 'Your order has been sucesssfully registered !'
          ).deliver!
    end
end