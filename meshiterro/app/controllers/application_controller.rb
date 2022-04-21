class ApplicationController < ActionController::Base
  # devise利用の機能（ユーザ登録、ログイン認証など）が使われる場合、先にconfigure_permitted_parametersが実行される
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    post_images_path
  end

  protected

  # devise_parameter_sanitizer.permitでnameのデータ操作を許可するアクションメソッドが指定される
  # 今回は、ユーザ登録（sign_up）の際に、ユーザ名（name）のデータ操作が許可される
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
