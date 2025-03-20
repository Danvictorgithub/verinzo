class HomeController < ApplicationController
  def index
    render json: { message: "Verinzo API v1.0.0 by DV8" }
  end
end
