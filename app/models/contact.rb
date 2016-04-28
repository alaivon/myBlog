class Contact < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true

   def headers
   	 {
      :subject => "Message from Bill's Blog",
      :to => "alanivon8@gmail.com",
      :from => %("#{name}" < "#{email}")  # %代替雙引號字串，因字串裡有很多雙引號
    }
   end
end