class JustificationsController < ApplicationController
  before_action :set_justification, only: [:show, :edit, :update, :destroy]

  # GET /justifications
  # GET /justifications.json
  def index
    @justifications = Justification.all
  end

  # GET /justifications/1
  # GET /justifications/1.json
  def show
  end

  # GET /justifications/new
  def new
    @justification = Justification.new
  end

  # GET /justifications/1/edit
  def edit
  end

  # POST /justifications
  # POST /justifications.json
  def create
    @justification = Justification.new(justification_params)

    respond_to do |format|
      if @justification.save
        format.html { redirect_to @justification, notice: 'Justification was successfully created.' }
        format.json { render action: 'show', status: :created, location: @justification }
      else
        format.html { render action: 'new' }
        format.json { render json: @justification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /justifications/1
  # PATCH/PUT /justifications/1.json
  def update
    respond_to do |format|
      if @justification.update(justification_params)
        format.html { redirect_to @justification, notice: 'Justification was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @justification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /justifications/1
  # DELETE /justifications/1.json
  def destroy
    @justification.destroy
    respond_to do |format|
      format.html { redirect_to justifications_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_justification
      @justification = Justification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def justification_params
      params.require(:justification).permit(:justId, :repo, :branch, :approved)
    end
end
