class AuthController < ApplicationController
  before_action :authenticate_user!, only: [ :me ]
  def me
    render json: { user: current_user }
  end
end
