class PokemonsController < ApplicationController
	def new 
		@new_pokemon = Pokemon.new
	end

	def create
		@new_pokemon = Pokemon.new(new_pokemon_params)
		@new_pokemon.health = 100
		@new_pokemon.level = 1
		@new_pokemon.trainer = current_trainer
		if @new_pokemon.save
			redirect_trainer
		else
			flash[:error] = @new_pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end

	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save

		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end

		redirect_trainer
	end

	private
	def redirect_trainer
		redirect_to trainer_path(id: current_trainer.id)
	end

	private 
	def new_pokemon_params
    	params.require(:pokemon).permit(:name)
	end

end
