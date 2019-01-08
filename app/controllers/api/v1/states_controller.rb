class Api::V1::StatesController < ApplicationController
  def index
    render json: { states: State.all }
  end

  def show
    @state = State.find_by(id: params[:id])
    render json: { state: @state, loans: @state.loans }
  end

  # this method only returns loans that are pertinent to the query, so there is less data being passed back and forth
  # also don't have to filter on the front end
  def specific
    @state = State.find(params[:id])
    @loans = @state.loans.where(:purpose_id == params[:purpose_id])
    render json: { state: @state, loans: @loans }
  end
end
