class AuthController < ApplicationController
  before_action :authenticate_user!, only: [ :me ]
  def me
    include_image
  end

  def include_image
    if current_user.image.attached?
      render json: { user: current_user, image: url_for(current_user.image) }
    else
      render json: { user: current_user }
    end
  end
end
