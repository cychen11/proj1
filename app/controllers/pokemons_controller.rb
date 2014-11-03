class PokemonsController < ApplicationController

	def capture
		captured_pokemon = Pokemon.find(params[:id])
		captured_pokemon.trainer = current_trainer
		captured_pokemon.save

		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health-10
		@pokemon.save
		if @pokemon.health<=0
			@pokemon.destroy
		end
		redirect_to trainer_path(current_trainer.id)
	end
end
