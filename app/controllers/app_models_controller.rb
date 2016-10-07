class AppModelsController < ApplicationController
  before_action :set_app_model, only: [:show, :edit, :update, :destroy]

  # GET /app_models
  # GET /app_models.json
  def index
    @app_models = AppModel.all
  end

  # GET /app_models/1
  # GET /app_models/1.json
  def show
  end

  # GET /app_models/new
  def new
    @app_model = AppModel.new
  end

  # GET /app_models/1/edit
  def edit
  end

  # POST /app_models
  # POST /app_models.json
  def create
    @app_model = AppModel.new(app_model_params)

    respond_to do |format|
      if @app_model.save
        format.html { redirect_to @app_model, notice: 'App model was successfully created.' }
        format.json { render :show, status: :created, location: @app_model }
      else
        format.html { render :new }
        format.json { render json: @app_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_models/1
  # PATCH/PUT /app_models/1.json
  def update
    respond_to do |format|
      if @app_model.update(app_model_params)
        format.html { redirect_to @app_model, notice: 'App model was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_model }
      else
        format.html { render :edit }
        format.json { render json: @app_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_models/1
  # DELETE /app_models/1.json
  def destroy
    @app_model.destroy
    respond_to do |format|
      format.html { redirect_to app_models_url, notice: 'App model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_model
      @app_model = AppModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_model_params
      params.require(:app_model).permit(:name, :plural, :main_model, :model_type_id,
                                        app_attributes_attributes: [:id, :name, :mandatory, :default_value, :attribute_type_id, :_destroy])
    end
end
