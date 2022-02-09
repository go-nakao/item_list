class ApplicationController < ActionController::Base
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end

# nilガード 左辺がnilの場合は値が代入され、既に値が入っている場合は値の代入は行われません。
