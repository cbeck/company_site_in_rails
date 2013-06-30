class Notifications < ActionMailer::Base  

	def	contact_message(contact)
    # from        'Netphase Support <support@netphase.com>'
    from        'support@netphase.com'
	  recipients  'info@netphase.com'
	  subject     '[netphase] new contact message'
	  body        :contact => contact
	  content_type "text/html"
  end

end
