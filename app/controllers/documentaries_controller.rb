class DocumentariesController < ApplicationController
  before_action :set_documentary, only: %i[ show edit update destroy ]

  # GET /documentaries or /documentaries.json
  def index
    @documentaries = Documentary.all
  end

  # GET /documentaries/1 or /documentaries/1.json
  def show
  end

  # GET /documentaries/new
  def new
    @documentary = Documentary.new
  end

  # GET /documentaries/1/edit
  def edit
  end

  # POST /documentaries or /documentaries.json
  def create
    @documentary = Documentary.new(documentary_params)

    respond_to do |format|
      if @documentary.save
        format.html { redirect_to documentary_url(@documentary), notice: "Documentary was successfully created." }
        format.json { render :show, status: :created, location: @documentary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @documentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documentaries/1 or /documentaries/1.json
  def update
    respond_to do |format|
      if @documentary.update(documentary_params)
        format.html { redirect_to documentary_url(@documentary), notice: "Documentary was successfully updated." }
        format.json { render :show, status: :ok, location: @documentary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @documentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documentaries/1 or /documentaries/1.json
  def destroy
    @documentary.destroy

    respond_to do |format|
      format.html { redirect_to documentaries_url, notice: "Documentary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentary
      @documentary = Documentary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def documentary_params
      params.require(:documentary).permit(:name, :director, :año)
    end
end
