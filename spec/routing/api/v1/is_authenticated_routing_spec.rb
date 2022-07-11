# frozen_string_literal: true

require 'rails_helper'

RSpec.describe(Api::V1::IsAuthenticatedController, type: :routing) do
  it { should route(:get, 'api/v1/is_authenticated').to(action: :index, format: :json) }
end
