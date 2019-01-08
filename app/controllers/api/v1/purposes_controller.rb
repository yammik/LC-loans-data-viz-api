class Api::V1::PurposesController < ApplicationController
  def index
    render json: { purposes: Purpose.all }
  end

  def show
    @purpose = Purpose.find(params[:id])
    render json: { purpose: @purpose, loans: @purpose.loans }
  end
end
