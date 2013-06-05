class SushiTextsController < ApplicationController
  # GET /sushi_texts
  # GET /sushi_texts.xml
  def index
    @sushi_texts = SushiText.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sushi_texts }
    end
  end

  # GET /sushi_texts/1
  # GET /sushi_texts/1.xml
  def show
    @sushi_text = SushiText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sushi_text }
    end
  end

  # GET /sushi_texts/new
  # GET /sushi_texts/new.xml
  def new
    @sushi_text = SushiText.new    
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sushi_text }
    end
  end

  # GET /sushi_texts/1/edit
  def edit
    @sushi_text = SushiText.find(params[:id])
  end

  # POST /sushi_texts
  # POST /sushi_texts.xml
  def create
    @sushi_text = SushiText.new(params[:sushi_text])

    respond_to do |format|
      if @sushi_text.save
        flash[:notice] = 'SushiText was successfully created.'
        format.html { redirect_to(@sushi_text) }
        format.xml  { render :xml => @sushi_text, :status => :created, :location => @sushi_text }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sushi_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sushi_texts/1
  # PUT /sushi_texts/1.xml
  def update
    @sushi_text = SushiText.find(params[:id])

    respond_to do |format|
      if @sushi_text.update_attributes(params[:sushi_text])
        flash[:notice] = 'SushiText was successfully updated.'
        format.html { redirect_to(@sushi_text) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sushi_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sushi_texts/1
  # DELETE /sushi_texts/1.xml
  def destroy
    @sushi_text = SushiText.find(params[:id])
    @sushi_text.destroy

    respond_to do |format|
      format.html { redirect_to(sushi_texts_url) }
      format.xml  { head :ok }
    end
  end
end
