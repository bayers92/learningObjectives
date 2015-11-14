class CommotsController < ApplicationController
  before_action :set_commot, only: [:show, :edit, :update, :destroy]

  # GET /commots
  # GET /commots.json
  def index
    @commots = Commot.all
  end

  # GET /commots/1
  # GET /commots/1.json
  def show
  end

  # GET /commots/new
  def new
    @commot = Commot.new
  end

  # GET /commots/1/edit
  def edit
  end

  # POST /commots
  # POST /commots.json
  def create
    @commot = Commot.new(commot_params)

    respond_to do |format|
      if @commot.save
        format.html { redirect_to @commot, notice: 'Commot was successfully created.' }
        format.json { render :show, status: :created, location: @commot }
      else
        format.html { render :new }
        format.json { render json: @commot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commots/1
  # PATCH/PUT /commots/1.json
  def update
    respond_to do |format|
      if @commot.update(commot_params)
        format.html { redirect_to @commot, notice: 'Commot was successfully updated.' }
        format.json { render :show, status: :ok, location: @commot }
      else
        format.html { render :edit }
        format.json { render json: @commot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commots/1
  # DELETE /commots/1.json
  def destroy
    @commot.destroy
    respond_to do |format|
      format.html { redirect_to commots_url, notice: 'Commot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commot
      @commot = Commot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commot_params
      params.require(:commot).permit(:post_id, :body)
    end
end
