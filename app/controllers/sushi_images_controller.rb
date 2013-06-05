class SushiImagesController < ApplicationController
  # GET /sushi_images
  # GET /sushi_images.xml
  def index
    @sushi_images = SushiImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sushi_images }
    end
  end

  # GET /sushi_images/1
  # GET /sushi_images/1.xml
  def show
    @sushi_image = SushiImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sushi_image }
    end
  end

  # GET /sushi_images/new
  # GET /sushi_images/new.xml
  def new
    @sushi_image = SushiImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sushi_image }
    end
  end

  # GET /sushi_images/1/edit
  def edit
    @sushi_image = SushiImage.find(params[:id])
  end

  # POST /sushi_images
  # POST /sushi_images.xml
  def create
    @sushi_image = SushiImage.new(params[:sushi_image])

    respond_to do |format|
      if @sushi_image.save
        flash[:notice] = 'SushiImage was successfully created.'
        format.html { redirect_to(@sushi_image) }
        format.xml  { render :xml => @sushi_image, :status => :created, :location => @sushi_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sushi_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sushi_images/1
  # PUT /sushi_images/1.xml
  def update
    @sushi_image = SushiImage.find(params[:id])

    respond_to do |format|
      if @sushi_image.update_attributes(params[:sushi_image])
        flash[:notice] = 'SushiImage was successfully updated.'
        format.html { redirect_to(@sushi_image) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sushi_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sushi_images/1
  # DELETE /sushi_images/1.xml
  def destroy
    @sushi_image = SushiImage.find(params[:id])
    @sushi_image.destroy

    respond_to do |format|
      format.html { redirect_to(sushi_images_url) }
      format.xml  { head :ok }
    end
  end
end
