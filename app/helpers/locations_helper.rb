module LocationsHelper

	def quelle_tenue(selontemperature)
		if selontemperature.temperature >= 25
			image_tag("maillot_bain.jpg")
		elsif selontemperature.temperature >= 10 && selontemperature.temperature <= 24
			image_tag("short.jpg")
		elsif selontemperature.temperature >= 0 && selontemperature.temperature <= 9
			"Il fait froid, couvrez-vous !"
		else
			image_tag("pere_noel.jpg")
		end
	end

end
