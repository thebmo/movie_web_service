class BmoController < ApplicationController

  def index
    butts = {:bmo => "rocks"}

    render json: butts
  end
end
