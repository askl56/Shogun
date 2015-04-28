module Shogun
  module Core
    class ApplicationController < ActionController::Base
      before_action :authenticate_user!
    end
  end
end
