class MeasurementsController < ApplicationController
  def index
    @measurements = current_user.measurements.with_units
    data = @measurements.group_by { |measurement| measurement.unit.title }
    render json: { data: data }
  end

  def create
    unit = Unit.find(params[:unit_id])
    @measurement = unit.measurements.build(measurement_params)
    @measurement.user = current_user

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
    params.permit(:value, :unit_id, :measurement)
  end
end
