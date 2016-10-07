class AttributeTypesController < ApplicationController
  before_action :set_attribute_type, only: [:show, :edit, :update, :destroy]

  # GET /attribute_types
  # GET /attribute_types.json
  def index
    @attribute_types = AttributeType.all
  end

  # GET /attribute_types/1
  # GET /attribute_types/1.json
  def show
  end

  # GET /attribute_types/new
  def new
    @attribute_type = AttributeType.new
  end

  # GET /attribute_types/1/edit
  def edit
  end

  # POST /attribute_types
  # POST /attribute_types.json
  def create
    @attribute_type = AttributeType.new(attribute_type_params)

    respond_to do |format|
      if @attribute_type.save
        format.html { redirect_to @attribute_type, notice: 'Attribute type was successfully created.' }
        format.json { render :show, status: :created, location: @attribute_type }
      else
        format.html { render :new }
        format.json { render json: @attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_types/1
  # PATCH/PUT /attribute_types/1.json
  def update
    respond_to do |format|
      if @attribute_type.update(attribute_type_params)
        format.html { redirect_to @attribute_type, notice: 'Attribute type was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribute_type }
      else
        format.html { render :edit }
        format.json { render json: @attribute_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_types/1
  # DELETE /attribute_types/1.json
  def destroy
    @attribute_type.destroy
    respond_to do |format|
      format.html { redirect_to attribute_types_url, notice: 'Attribute type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_type
      @attribute_type = AttributeType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attribute_type_params
      params.require(:attribute_type).permit(:name, :attr_type)
    end
end
