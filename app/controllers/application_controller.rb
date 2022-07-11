# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from ActiveRecord::RecordNotFound, with: :show_not_found_errors

  rescue_from CanCan::AccessDenied do
    render(json: { error: 'Unauthorized!' }, status: :unauthorized)
  end

  def current_ability
    @current_ability ||= Ability.new(current_api_user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name nickname])
  end

  def show_not_found_errors(exception)
    render(json: { error: "#{exception.message} with 'id'=#{params[:id]}" },
           status: :not_found)
  end
end
