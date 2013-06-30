class SiteController < ApplicationController
  
  def index
    @no_box = true
    @tab = "home"
  end
  
  def contact
    @tab = "contact"
  end
  
  def about
    @tab = "about"
  end
  
  def work
    @tab = "work"
  end
  
  def press
    @tab = "about"
  end
  
  def teaser
    @partial = params[:next_step]    
  end
  
  def nanomojo
    @tab = "work"
  end
  
end
