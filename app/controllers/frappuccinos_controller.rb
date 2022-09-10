class FrappuccinosController < ApplicationController
  before_action :set_frappuccino, only: %i[ show edit update destroy ]

  # GET /frappuccinos
  def index
    @frappuccinos = Frappuccino.all
  end

  # GET /frappuccinos/1
  def show
  end

  # GET /frappuccinos/new
  def new
    @frappuccino = Frappuccino.new
  end

  # GET /frappuccinos/1/edit
  def edit
  end

  # POST /frappuccinos
  def create
    @frappuccino = Frappuccino.new(frappuccino_params)

    if @frappuccino.save
      redirect_to @frappuccino, notice: "Frappuccino was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /frappuccinos/1
  def update
    if @frappuccino.update(frappuccino_params)
      redirect_to @frappuccino, notice: "Frappuccino was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /frappuccinos/1
  def destroy
    @frappuccino.destroy
    redirect_to frappuccinos_url, notice: "Frappuccino was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frappuccino
      @frappuccino = Frappuccino.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frappuccino_params
      params.require(:frappuccino).permit(:name, :description)
    end
end
