class AuthController < ApplicationController
  before_action :authenticate_user!, only: [ :me ]
  def me
    include_image
  end

  def include_image
    user_data = current_user.as_json
    if current_user.image.attached?
      user_data['image'] = current_user.image.supabase_public_url
    end
    render json: { user: user_data }
  end
end
