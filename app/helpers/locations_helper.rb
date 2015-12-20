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
		icone = icon.icon_meteo
		if icone == "clear-day"
			wi_icon "day-sunny"
		elsif icone == "clear-night"
			wi_icon "night-clear"
		elsif icone == "rain"
			wi_icon "rain"
		elsif icone == "snow"
			wi_icon "snow"
		elsif icone == "sleet"
			wi_icon "snow"
		elsif icone == "wind"
			wi_icon "windy"
		elsif icone == "fog"
			wi_icon "day-fog"
		elsif icone == "cloudy"
			wi_icon "cloudy"
		elsif icone == "partly-cloudy-day"
			wi_icon "day-cloudy"
		elsif icone == "partly-cloudy-night"
			wi_icon "night-cloudy"
		elsif icone == "hail"
			wi_icon "hail"
		elsif icone == "thunderstorm"
			wi_icon "thunderstorm"
		elsif icone == "tornado"
			wi_icon "tornado"
		else
			wi_icon "na"
		end
	end
	

end
