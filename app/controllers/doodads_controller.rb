class DoodadsController < ApplicationController
  before_action :set_doodad, only: %i[ show update destroy ]

  # GET /doodads
  def index
    @doodads = Doodad.all

    render json: @doodads
  end

  # GET /doodads/1
  def show
    render json: @doodad
  end

  # POST /doodads
  def create
    @doodad = Doodad.new(doodad_params)

    if @doodad.save
      render json: @doodad, status: :created, location: @doodad
    else
      render json: @doodad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doodads/1
  def update
    if @doodad.update(doodad_params)
      render json: @doodad
    else
      render json: @doodad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doodads/1
  def destroy
    @doodad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doodad
      @doodad = Doodad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doodad_params
      params.require(:doodad).permit(:name, :color)
    end
end
