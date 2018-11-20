class InquiryMailer < ApplicationMailer

  def inquiry_email(inquiry)
    @inquiry = inquiry
    mail(to: 'hkr.k.otmrann@icloud.com', subject: '新規お問い合わせがあります')
  end

end
