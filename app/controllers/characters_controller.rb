class CharactersController < ApplicationController
	before_action :set_character, only: [:character, :edit, :update, :destroy]

	def index
		@characters = Character.all.order(:updated_at).reverse
	end

	def show
		@character = Character.find(params[:id])
		@show = @character.show
	end

	def new
		@characters = Character.all
		@character = Character.new

		@shows = Show.all.order(:title)
		@show = Show.new
	end

	def create
		@character = Character.new( character_params )

		if @character.save
			redirect_to character_path(@character)
		else
			render 'new'
		end
	end

	def edit
		@shows = Show.all

		@characters = Character.all		
		@character = Character.find(params[:id])		
	end

	def update
		@shows = Show.all
		@characters = Character.all

		@charater = Character.find(params[:id])
		if @character.update( params[:character].permit(:name, :show_id) )
			redirect_to @character
		else
			render 'edit'
		end
	end

	def destroy
		@character = Character.find(params[:id])
		@character.destroy

		#Where does this lead to?
		redirect_to characters_path
	end

	private
	  def character_params
	    params.require(:character).permit(:name, :show_id)	    
  	end

  	#? callback? is this for sql inj prev?
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end
end