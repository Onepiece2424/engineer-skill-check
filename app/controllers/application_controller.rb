class ApplicationController < ActionController::Base
  include SessionsHelper

  before_action :user_logged_in?

  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_path, alert: '画面を閲覧する権限がありません。'
  end

  private
    def user_logged_in?
      return if logged_in?
      redirect_to login_path
    end
end
