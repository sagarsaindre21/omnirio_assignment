class Api::AtmController < ApplicationController
  def withdraw
    response = WithdrawAmountService.new(
    	permitted_params[:input_amount].to_i
    ).withdraw

    respond_json(response)
  rescue UnableToWithdraw
    respond_json({}, 400)
  rescue StandardError
    respond_json({}, 500)
  end

  private

  def respond_json(response, status = 200)
    respond_to do |format|
      format.json { render json: response.to_json, status: status }
    end
  end

  def permitted_params
  	params.permit(:input_amount, :format)
  end
end
