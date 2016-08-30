class Users::SessionsController < Devise::SessionsController
# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

    # POST /resource/sign_in
    def create
        user = User.find_by_email(params[:user][:email])
        user.update(status: true)
        super
    end

    # DELETE /resource/sign_out
    def destroy
        current_user.update(status: false)
        super
    end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
