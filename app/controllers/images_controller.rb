class ImagesController < ApplicationController  
  before_filter :authenticate, :except => [:show, :thumb, :small, :medium, :mini]
  caches_page [:show, :thumb, :small, :medium, :mini]
  
  def thumb
    @image = Image.find(params[:id])
    render :inline => "@image.operate {|p| p.resize '75x75'}", :type => :flexi
  end

  def small
    @image = Image.find(params[:id])
    render :inline => "@image.operate {|p| p.resize '180x180'}", :type => :flexi
  end

  def medium
    @image = Image.find(params[:id])
    render :inline => "@image.operate {|p| p.resize '300x300'}", :type => :flexi
  end
  
  def mini
    @image = Image.find(params[:id])
    render :inline => "@image.operate {|p| p.resize '40x40'}", :type => :flexi
  end
  
  # GET /images
  # GET /images.xml
  def index
    @images = Image.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.jpg
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])

    respond_to do |format|
      if @image.save
        flash[:notice] = 'Image was successfully created.'
        format.html { redirect_to(@image) }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        flash[:notice] = 'Image was successfully updated.'
        format.html { redirect_to(@image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @image.destroy

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end
