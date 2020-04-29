class EmpiresController < ApplicationController
  def new
    @empire = Empire.new
  end

  def create
    @empire = Empire.new(empire_params)

    if @empire.save
      # species = Species.new(empire_params["species"])
      # binding.pry
      # species.empire = @empire
      # if species.save
        redirect_to(@empire, notice: 'Empire was successfully created.')
      # else
      #   render :new
      # end
    else
      render :new
    end
  end

  def show
    @empire = Empire.find(params[:id])
  end

  private

  def empire_params
    params.require(:empire).permit(:name, :multiplayer_session_code, :species,
      species_attributes: [:id, :archetype, :biography, :name, :portrait])
  end
end
