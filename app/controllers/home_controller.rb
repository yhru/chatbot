# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @response = ''
  end

  def ask
    @response = ChatgptService.call(params[:question])
    redirect_to root_path(response: @response)
  end
end
