class TeasController < ApplicationController
  before_action :set_tea, only: %i[ show edit update destroy ]

  # GET /teas
  def index
    @search = Tea.ransack(params[:q])
    @search.sorts = 'id desc' if @search.sorts.empty?
    @coffees = @search.result.page(params[:page])
  end

  # GET /teas/1
  def show
  end

  # GET /teas/new
  def new
    @tea = Tea.new
  end

  # GET /teas/1/edit
  def edit
  end

  # POST /teas
  def create
    @tea = Tea.new(tea_params)

    if @tea.save
      redirect_to @tea, notice: "Tea was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teas/1
  def update
    if @tea.update(tea_params)
      redirect_to @tea, notice: "Tea was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /teas/1
  def destroy
    @tea.destroy
    redirect_to teas_url, notice: "Tea was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tea
      @tea = Tea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tea_params
      params.require(:tea).permit(:name, :description)
    end
end
