class SushisController < ApplicationController
  # GET /sushis
  # GET /sushis.xml
  def index
    @sushis = Sushi.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sushis }
    end
  end

  # GET /sushis/1
  # GET /sushis/1.xml
  def show
    @sushi = Sushi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sushi }
    end
  end

  # GET /sushis/new
  # GET /sushis/new.xml
  def new
    @sushi = Sushi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sushi }
    end
  end

  # GET /sushis/1/edit
  def edit
    @sushi = Sushi.find(params[:id])
    @texts = SushiText.find(params[:sushi_id == :id])
  end

  # POST /sushis
  # POST /sushis.xml
  def create
    @sushi = Sushi.new(params[:sushi])

    respond_to do |format|
      if @sushi.save
        flash[:notice] = 'Sushi was successfully created.'
        format.html { redirect_to(@sushi) }
        format.xml  { render :xml => @sushi, :status => :created, :location => @sushi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sushi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sushis/1
  # PUT /sushis/1.xml
  def update
    @sushi = Sushi.find(params[:id])

    respond_to do |format|
      if @sushi.update_attributes(params[:sushi])
        flash[:notice] = 'Sushi was successfully updated.'
        format.html { redirect_to(@sushi) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sushi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sushis/1
  # DELETE /sushis/1.xml
  def destroy
    @sushi = Sushi.find(params[:id])
    @sushi.destroy

    respond_to do |format|
      format.html { redirect_to(sushis_url) }
      format.xml  { head :ok }
    end
  end
end
