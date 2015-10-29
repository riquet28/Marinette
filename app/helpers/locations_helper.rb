module LocationsHelper

	def quelle_tenue(selontemperature)
		if selontemperature >= 25
			'Maillot de bain !!!'
		elsif selontemperature >= 10 && selontemperature <= 24
			'Short et Sweet !!!'
		elsif selontemperature >= 0 && selontemperature <= 9
			"Pantalon et Manteau !!!"
		else
			'Restez chez vous !!!'
		end
	end

	def quel_accessoire(accessoire)
		if accessoire >= 25
			'Serviette et crème solaire !!!'
		elsif accessoire >= 10 && accessoire <= 24
			'Ballon et jeux de plage !!!'
		elsif accessoire >= 0 && accessoire <= 9
			"Prevoyez les gants !!!"
		else
			'Rien, vous êtes chez vous !!!'
		end
	end

	def quelle_activite(activite)
		if activite >= 25
			'Baignade et bronzage!!!'
		elsif activite >= 10 && activite <= 24
			'Bronzage et pêche à pieds !!!'
		elsif activite >= 0 && activite <= 9
			"Bougez il fait froid !!!"
		else
			'Rien, vous êtes chez vous !!!'
		end
	end

end
