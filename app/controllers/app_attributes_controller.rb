class AppAttributesController < ApplicationController
  before_action :set_app_attribute, only: [:show, :edit, :update, :destroy]

  # GET /app_attributes
  # GET /app_attributes.json
  def index
    @app_attributes = AppAttribute.all
  end

  # GET /app_attributes/1
  # GET /app_attributes/1.json
  def show
  end

  # GET /app_attributes/new
  def new
    @app_attribute = AppAttribute.new
  end

  # GET /app_attributes/1/edit
  def edit
  end

  # POST /app_attributes
  # POST /app_attributes.json
  def create
    @app_attribute = AppAttribute.new(app_attribute_params)

    respond_to do |format|
      if @app_attribute.save
        format.html { redirect_to @app_attribute, notice: 'App attribute was successfully created.' }
        format.json { render :show, status: :created, location: @app_attribute }
      else
        format.html { render :new }
        format.json { render json: @app_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_attributes/1
  # PATCH/PUT /app_attributes/1.json
  def update
    respond_to do |format|
      if @app_attribute.update(app_attribute_params)
        format.html { redirect_to @app_attribute, notice: 'App attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_attribute }
      else
        format.html { render :edit }
        format.json { render json: @app_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_attributes/1
  # DELETE /app_attributes/1.json
  def destroy
    @app_attribute.destroy
    respond_to do |format|
      format.html { redirect_to app_attributes_url, notice: 'App attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_attribute
      @app_attribute = AppAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_attribute_params
      params.require(:app_attribute).permit(:name, :mandatory, :default_value, :attribute_type)
    end
end
