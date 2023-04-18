# frozen_string_literal: true

class HomeController < ApplicationController
  rescue_from RuntimeError, with: :handle_runtime_error

  def index
    @response = ''
  end

  def ask
    @response = ChatgptService.call(params[:question])
    redirect_to root_path(response: @response)
    flash[:error] = "Une erreur s'est produite lors de la réponse à votre question. Veuillez réessayer plus tard."
    redirect_to root_path
  end

  private

  def handle_runtime_error(exception)
    flash[:error] = "Une erreur est survenue : #{exception.message}"
    redirect_to root_path
  end
end
