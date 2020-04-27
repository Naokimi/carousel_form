class EmpiresController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  private

  def empire_params
    params.require(:empire).permit(:name, :multiplayer_session_code,
      species_attributes: [:id, :archetype, :biography, :name, :portrait])
  end
end
