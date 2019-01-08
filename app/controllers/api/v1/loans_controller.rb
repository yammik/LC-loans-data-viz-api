class Api::V1::LoansController < ApplicationController
  def index
    render json: { loans: Loan.all }
  end

  def show
    render json: { loan: Loan.find(params[:id]) }
  end
end
