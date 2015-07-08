module Shogun
  class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    rescue_from CanCan::AccessDenied do |_exception|
      render file: 'static/403.html', status: 403, layout: false
    end

    def current_ability
      @current_ability ||= Shogun::Ability.new(current_user)
    end
  end
end
