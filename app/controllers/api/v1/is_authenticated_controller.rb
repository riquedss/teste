# frozen_string_literal: true

module Api
  module V1
    class IsAuthenticatedController < ApplicationController
      before_action :authenticate_api_user!
      load_and_authorize_resource class: false

      def index
        render(json: current_api_user, status: :ok)
      end
    end
  end
end
