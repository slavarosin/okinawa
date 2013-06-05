class ComponentGroupTextsController < ApplicationController
  # GET /component_group_texts
  # GET /component_group_texts.xml
  def index
    @component_group_texts = ComponentGroupText.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @component_group_texts }
    end
  end

  # GET /component_group_texts/1
  # GET /component_group_texts/1.xml
  def show
    @component_group_text = ComponentGroupText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @component_group_text }
    end
  end

  # GET /component_group_texts/new
  # GET /component_group_texts/new.xml
  def new
    @component_group_text = ComponentGroupText.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @component_group_text }
    end
  end

  # GET /component_group_texts/1/edit
  def edit
    @component_group_text = ComponentGroupText.find(params[:id])
  end

  # POST /component_group_texts
  # POST /component_group_texts.xml
  def create
    @component_group_text = ComponentGroupText.new(params[:component_group_text])

    respond_to do |format|
      if @component_group_text.save
        flash[:notice] = 'ComponentGroupText was successfully created.'
        format.html { redirect_to(@component_group_text) }
        format.xml  { render :xml => @component_group_text, :status => :created, :location => @component_group_text }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @component_group_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /component_group_texts/1
  # PUT /component_group_texts/1.xml
  def update
    @component_group_text = ComponentGroupText.find(params[:id])

    respond_to do |format|
      if @component_group_text.update_attributes(params[:component_group_text])
        flash[:notice] = 'ComponentGroupText was successfully updated.'
        format.html { redirect_to(@component_group_text) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @component_group_text.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /component_group_texts/1
  # DELETE /component_group_texts/1.xml
  def destroy
    @component_group_text = ComponentGroupText.find(params[:id])
    @component_group_text.destroy

    respond_to do |format|
      format.html { redirect_to(component_group_texts_url) }
      format.xml  { head :ok }
    end
  end
end
