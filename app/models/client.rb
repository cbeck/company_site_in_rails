class Client < ActiveRecord::Base
  named_scope :featured, :conditions => {:featured => true}
  named_scope :recent, :order => "ID desc"
  acts_as_list
  
end
