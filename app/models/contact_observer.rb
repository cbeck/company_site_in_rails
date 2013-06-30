class ContactObserver < ActiveRecord::Observer
  def after_create(contact)
		Notifications.deliver_contact_message(contact)
  end

end