class Api::V1::StatesController < ApplicationController
  def index
    render json: { states: State.all }
  end

  def show
    @state = State.find(params[:id])
    render json: { state: @state, loans: @state.loans }
  end
end
