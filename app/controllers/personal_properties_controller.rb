class PersonalPropertiesController < ApplicationController
  # GET /personal_properties
  # GET /personal_properties.json
  def index
    @personal_properties = PersonalProperty.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @personal_properties }
    end
  end

  # GET /personal_properties/1
  # GET /personal_properties/1.json
  def show
    @personal_property = PersonalProperty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @personal_property }
    end
  end

  # GET /personal_properties/new
  # GET /personal_properties/new.json
  def new
    @personal_property = PersonalProperty.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @personal_property }
    end
  end

  # GET /personal_properties/1/edit
  def edit
    @personal_property = PersonalProperty.find(params[:id])
  end

  # POST /personal_properties
  # POST /personal_properties.json
  def create
    @personal_property = PersonalProperty.new(params[:personal_property])

    respond_to do |format|
      if @personal_property.save
        format.html { redirect_to @personal_property, notice: 'Personal property was successfully created.' }
        format.json { render json: @personal_property, status: :created, location: @personal_property }
      else
        format.html { render action: "new" }
        format.json { render json: @personal_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /personal_properties/1
  # PUT /personal_properties/1.json
  def update
    @personal_property = PersonalProperty.find(params[:id])

    respond_to do |format|
      if @personal_property.update_attributes(params[:personal_property])
        format.html { redirect_to @personal_property, notice: 'Personal property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @personal_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_properties/1
  # DELETE /personal_properties/1.json
  def destroy
    @personal_property = PersonalProperty.find(params[:id])
    @personal_property.destroy

    respond_to do |format|
      format.html { redirect_to personal_properties_url }
      format.json { head :no_content }
    end
  end
end
