class Api::V1::GradesController < ApplicationController
  def index
    render json: { grades: Grade.all }
  end

  def show
    @grade = Grade.find(params[:id])
    render json: { grade: @grade, loans: @grade.loans }
  end
end
