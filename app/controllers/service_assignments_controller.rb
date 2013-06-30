class ServiceAssignmentsController < ApplicationController
  # GET /service_assignments
  # GET /service_assignments.xml
  def index
    @service_assignments = ServiceAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @service_assignments }
    end
  end

  # GET /service_assignments/1
  # GET /service_assignments/1.xml
  def show
    @service_assignment = ServiceAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @service_assignment }
    end
  end

  # GET /service_assignments/new
  # GET /service_assignments/new.xml
  def new
    @service_assignment = ServiceAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @service_assignment }
    end
  end

  # GET /service_assignments/1/edit
  def edit
    @service_assignment = ServiceAssignment.find(params[:id])
  end

  # POST /service_assignments
  # POST /service_assignments.xml
  def create
    @service_assignment = ServiceAssignment.new(params[:service_assignment])

    respond_to do |format|
      if @service_assignment.save
        flash[:notice] = 'ServiceAssignment was successfully created.'
        format.html { redirect_to(@service_assignment) }
        format.xml  { render :xml => @service_assignment, :status => :created, :location => @service_assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @service_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /service_assignments/1
  # PUT /service_assignments/1.xml
  def update
    @service_assignment = ServiceAssignment.find(params[:id])

    respond_to do |format|
      if @service_assignment.update_attributes(params[:service_assignment])
        flash[:notice] = 'ServiceAssignment was successfully updated.'
        format.html { redirect_to(@service_assignment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @service_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /service_assignments/1
  # DELETE /service_assignments/1.xml
  def destroy
    @service_assignment = ServiceAssignment.find(params[:id])
    @service_assignment.destroy

    respond_to do |format|
      format.html { redirect_to(service_assignments_url) }
      format.xml  { head :ok }
    end
  end
end
