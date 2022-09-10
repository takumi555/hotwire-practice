class EspressosController < ApplicationController
  before_action :set_espresso, only: %i[ show edit update destroy ]

  # GET /espressos
  def index
    @search = Espresso.ransack(params[:q])
    @search.sorts = 'id desc' if @search.sorts.empty?
    @espressos = @search.result.page(params[:page])
  end

  # GET /espressos/1
  def show
  end

  # GET /espressos/new
  def new
    @espresso = Espresso.new
  end

  # GET /espressos/1/edit
  def edit
  end

  # POST /espressos
  def create
    @espresso = Espresso.new(espresso_params)

    if @espresso.save
      redirect_to @espresso, notice: "Espresso was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /espressos/1
  def update
    if @espresso.update(espresso_params)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /espressos/1
  def destroy
    @espresso.destroy
    redirect_to espressos_url, notice: "Espresso was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espresso
      @espresso = Espresso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def espresso_params
      params.require(:espresso).permit(:name, :description)
    end
end
