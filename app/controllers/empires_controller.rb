class EmpiresController < ApplicationController
  def new
    @empire = Empire.new

    json = Species.portraits

    respond_to do |format|
      format.html
      format.json { render json: json }
    end
  end

  def create
    @empire = Empire.new(empire_params)

    if @empire.save
      species = Species.new(species_params)
      species.empire = @empire
      if species.save
        redirect_to(@empire, notice: 'Empire was successfully created.')
      else
        render :new
      end
    else
      render :new
    end
  end

  def show
    @empire = Empire.find(params[:id])
  end

  private

  def empire_params
    params.require(:empire).permit(:name, :multiplayer_session_code)
  end

  def species_params
    params['species'].permit(:id, :archetype, :biography, :name, :portrait)
  end
end
