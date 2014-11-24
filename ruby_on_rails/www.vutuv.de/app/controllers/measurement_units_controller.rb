class MeasurementUnitsController < ApplicationController
  before_action :set_measurement_unit, only: [:show, :edit, :update, :destroy]

  # GET /measurement_units
  # GET /measurement_units.json
  def index
    @measurement_units = MeasurementUnit.all
  end

  # GET /measurement_units/1
  # GET /measurement_units/1.json
  def show
  end

  # GET /measurement_units/new
  def new
    @measurement_unit = MeasurementUnit.new
  end

  # GET /measurement_units/1/edit
  def edit
  end

  # POST /measurement_units
  # POST /measurement_units.json
  def create
    @measurement_unit = MeasurementUnit.new(measurement_unit_params)

    respond_to do |format|
      if @measurement_unit.save
        format.html { redirect_to @measurement_unit, notice: 'Measurement unit was successfully created.' }
        format.json { render :show, status: :created, location: @measurement_unit }
      else
        format.html { render :new }
        format.json { render json: @measurement_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /measurement_units/1
  # PATCH/PUT /measurement_units/1.json
  def update
    respond_to do |format|
      if @measurement_unit.update(measurement_unit_params)
        format.html { redirect_to @measurement_unit, notice: 'Measurement unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @measurement_unit }
      else
        format.html { render :edit }
        format.json { render json: @measurement_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /measurement_units/1
  # DELETE /measurement_units/1.json
  def destroy
    @measurement_unit.destroy
    respond_to do |format|
      format.html { redirect_to measurement_units_url, notice: 'Measurement unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_unit
      @measurement_unit = MeasurementUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_unit_params
      params.require(:measurement_unit).permit(:name)
    end
end
