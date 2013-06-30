class ClientAssignmentsController < ApplicationController
  # GET /client_assignments
  # GET /client_assignments.xml
  def index
    @client_assignments = ClientAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_assignments }
    end
  end

  # GET /client_assignments/1
  # GET /client_assignments/1.xml
  def show
    @client_assignment = ClientAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_assignment }
    end
  end

  # GET /client_assignments/new
  # GET /client_assignments/new.xml
  def new
    @client_assignment = ClientAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_assignment }
    end
  end

  # GET /client_assignments/1/edit
  def edit
    @client_assignment = ClientAssignment.find(params[:id])
  end

  # POST /client_assignments
  # POST /client_assignments.xml
  def create
    @client_assignment = ClientAssignment.new(params[:client_assignment])

    respond_to do |format|
      if @client_assignment.save
        flash[:notice] = 'ClientAssignment was successfully created.'
        format.html { redirect_to(@client_assignment) }
        format.xml  { render :xml => @client_assignment, :status => :created, :location => @client_assignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /client_assignments/1
  # PUT /client_assignments/1.xml
  def update
    @client_assignment = ClientAssignment.find(params[:id])

    respond_to do |format|
      if @client_assignment.update_attributes(params[:client_assignment])
        flash[:notice] = 'ClientAssignment was successfully updated.'
        format.html { redirect_to(@client_assignment) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_assignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_assignments/1
  # DELETE /client_assignments/1.xml
  def destroy
    @client_assignment = ClientAssignment.find(params[:id])
    @client_assignment.destroy

    respond_to do |format|
      format.html { redirect_to(client_assignments_url) }
      format.xml  { head :ok }
    end
  end
end
