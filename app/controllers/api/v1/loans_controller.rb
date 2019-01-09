class Api::V1::LoansController < ApplicationController
  def show
    render json: { loan: Loan.find(params[:id]) }
  end
end
