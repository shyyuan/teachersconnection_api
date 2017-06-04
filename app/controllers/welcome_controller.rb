class WelcomeController < ApplicationController
  def index
    render json:{status:200, message: "Teachers Connection API"}
  end
end
