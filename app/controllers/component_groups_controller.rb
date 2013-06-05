class ComponentGroupsController < ApplicationController
  # GET /component_groups
  # GET /component_groups.xml
  def index
    @component_groups = ComponentGroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @component_groups }
    end
  end

  # GET /component_groups/1
  # GET /component_groups/1.xml
  def show
    @component_group = ComponentGroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @component_group }
    end
  end

  # GET /component_groups/new
  # GET /component_groups/new.xml
  def new
    @component_group = ComponentGroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @component_group }
    end
  end

  # GET /component_groups/1/edit
  def edit
    @component_group = ComponentGroup.find(params[:id])
  end

  # POST /component_groups
  # POST /component_groups.xml
  def create
    @component_group = ComponentGroup.new(params[:component_group])

    respond_to do |format|
      if @component_group.save
        flash[:notice] = 'ComponentGroup was successfully created.'
        format.html { redirect_to(@component_group) }
        format.xml  { render :xml => @component_group, :status => :created, :location => @component_group }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @component_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /component_groups/1
  # PUT /component_groups/1.xml
  def update
    @component_group = ComponentGroup.find(params[:id])

    respond_to do |format|
      if @component_group.update_attributes(params[:component_group])
        flash[:notice] = 'ComponentGroup was successfully updated.'
        format.html { redirect_to(@component_group) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @component_group.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /component_groups/1
  # DELETE /component_groups/1.xml
  def destroy
    @component_group = ComponentGroup.find(params[:id])
    @component_group.destroy

    respond_to do |format|
      format.html { redirect_to(component_groups_url) }
      format.xml  { head :ok }
    end
  end
end
