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

	# Affichage Icones Forecast.io
	def quelle_icone(icon)
		if icon.icon_meteo == "clear-day"
			wi_icon "day-sunny"
		elsif icon.icon_meteo == "clear-night"
			wi_icon "night-clear"
		elsif icon.icon_meteo == "rain"
			wi_icon "day-rain"
		elsif icon.icon_meteo == "snow"
			wi_icon "day-snow"
		elsif icon.icon_meteo == "sleet"
			wi_icon "day-snow"
		elsif icon.icon_meteo == "wind"
			wi_icon "day-windy"
		elsif icon.icon_meteo == "fog"
			wi_icon "day-fog"
		elsif icon.icon_meteo == "cloudy"
			wi_icon "day-cloudy"
		elsif icon.icon_meteo == "partly-cloudy-day"
			wi_icon "day-cloudy"
		elsif icon.icon_meteo == "partly-cloudy-night"
			wi_icon "night-cloudy"
		elsif icon.icon_meteo == "hail"
			wi_icon "hail"
		elsif icon.icon_meteo == "thunderstorm"
			wi_icon "day-thunderstorm"
		elsif icon.icon_meteo == "tornado"
			wi_icon "tornado"
		else
			wi_icon "na"
		end
	end
	

end
