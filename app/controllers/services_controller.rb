class ServicesController < ApplicationController
  before_filter :admin_required, :except => [:index]
  # GET /services
  # GET /services.xml
  def index
    @services = Service.all
    @tab = "how_we_help"
    @bus_app_companies = ["Wachovia Bank","Priceline.com","Nortel","IBM","Sabre","S|One","Datric","Goodrich","Burlington Coat Factory","Gartner","Cistech","Converge","NewsBank","TransCore","DHL"]
    @bus_app_services = ["Web application development", "Rapid prototyping", "Software development", "Database administration", "Legacy systems integration", "iPhone apps", "Mobile apps", "Server administration", "Systems architecture", "Application scaling", "User interface design", "Ruby on Rails", "Java", "php","Shell scripting", "Usability testing"]
    @web_app_companies = ["Branders.com","Priceline.com","Wachovia","CarolinaCoupons.com","UniversalBusinessListing.org","HomeschoolApple.com","Quovera","SportsMind","Planetweb","IGC Telecom","ubExact","Baytree","Cistech","I'm In","Interior Solutions"]
    @web_app_services = @bus_app_services - ["Software development", "Legacy systems integration"]
    @iphone_app_services = @bus_app_services - ["php", "Shell scripting", "Legacy systems integration"]
    @iphone_app_projects = ["CarolinaCoupons.com", "Netphase.com", "NaNoWriMoJo", "Pay Guido", "RV Power Buddy", "RV Maintenance Buddy", "Periodic Chart Heroes Flash Cards", "Survivor Phone", "Tour Bus", "Frugal Fitness"]
    @infrastructure_services = ["Shell scripting","Legacy systems integration","Server administration","Systems architecture","Application scaling","Cloud computing","Database administration"]
    @infrastructure_companies = ["Wheeler TV", "Spine", "ubExact", "CarolinaCoupons.com", "Baytree", "UniversalBusinessListing.org", "HomeschoolApple.com", "Datric"]
    @rescue_services = ["Code review", "Automated testing", "Project rescue"] + @web_app_services 
    @rescue_companies = ["Wachovia Bank", "S|One", "Datric", "ubExact", "Converge", "UniversalBusinessListing.org", "Spine"]
    @strategy_services = ["Project consulting", "Strategic planning", "Technical requirements", "Functional requirements", "Usability testing", "Application testing", "Load testing", "Search engine marketing", "Social media marketing","Website design", "Landing page optimization", "Team augmentation", "Technical resource screening"]
    @strategy_companies = (@bus_app_companies + @web_app_companies + @infrastructure_companies).uniq
  end

  # GET /services/1
  # GET /services/1.xml
  def show
    @service = Service.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/new
  # GET /services/new.xml
  def new
    @service = Service.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find(params[:id])
  end

  # POST /services
  # POST /services.xml
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      if @service.save
        flash[:notice] = 'Service was successfully created.'
        format.html { redirect_to(@service) }
        format.xml  { render :xml => @service, :status => :created, :location => @service }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.xml
  def update
    @service = Service.find(params[:id])

    respond_to do |format|
      if @service.update_attributes(params[:service])
        flash[:notice] = 'Service was successfully updated.'
        format.html { redirect_to(@service) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.xml
  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    respond_to do |format|
      format.html { redirect_to(services_url) }
      format.xml  { head :ok }
    end
  end
end
