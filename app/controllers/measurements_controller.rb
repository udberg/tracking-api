class MeasurementsController < ApplicationController
  def index
    @measurements = current_user.measurements.with_units.order(created_at: :desc)
    render json: { data: @measurements }
  end

  def create
    @measurement = current_user.measurements.build(measurement_params)
    @measurement.unit_id = params[:unit_id]
    if @measurement.save
      render json: { measurement: @measurement }
    else
      render json: { error: @measurement.errors }, status: :unprocessable_entity
    end
  end

  def update
    @measurement = Measurement.find(params[:id])
    @measurement.update(measurement_params)
    render json: { measurement: @measurement }
  end

  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
  end

  private

  def measurement_params
    params.permit(:value, :unit_id)
  end
end
