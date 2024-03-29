class PersonalitiesController < ApplicationController
  before_action :set_personality, only: [:personality, :edit, :update, :destroy]

  # GET /personalities
  # GET /personalities.json
  def index
    @personalities = Personality.all
  end

  # GET /personalities/1
  # GET /personalities/1.json
  def show
    @personality = Personality.find(params[:id])
  end

  # GET /personalities/new
  def new
    @personality = Personality.new
  end

  # GET /personalities/1/edit
  def edit
  end

  # POST /personalities
  # POST /personalities.json
  def create
    @personality = Personality.new(personality_params)

    respond_to do |format|
      if @personality.save
        format.html { redirect_to @personality, notice: 'Personality was successfully created.' }
        format.json { render action: 'show', status: :created, location: @personality }
      else
        format.html { render action: 'new' }
        format.json { render json: @personality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personalities/1
  # PATCH/PUT /personalities/1.json
  def update
    respond_to do |format|
      if @personality.update(personality_params)
        format.html { redirect_to @personality, notice: 'Personality was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @personality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personalities/1
  # DELETE /personalities/1.json
  def destroy
    @personality.destroy
    respond_to do |format|
      format.html { redirect_to personalities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personality
      @personality = Personality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personality_params
      params.require(:personality).permit(:stype, :mtype, :slabel, :quadra, :cf1, :cf2, :cf3, :cf4, :cf5, :cf6, :cf7, :cf8)
    end
end
