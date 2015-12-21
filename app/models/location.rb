class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode
	before_save :wind, :temperature, :humidite, :etat_ciel, :icon_meteo

	def wind
		json = ForecastIO.forecast(self.latitude, self.longitude, params: { units: 'si' })
		json.currently.windSpeed
	end

	def temperature
		json = ForecastIO.forecast(self.latitude, self.longitude, params: { units: 'si' })
		json.currently.temperature.to_i
	end

	def humidite
		json = ForecastIO.forecast(self.latitude, self.longitude)
		json.currently.humidity
	end

	def etat_ciel        
  	json = ForecastIO.forecast(self.latitude, self.longitude)
  	json.currently.summary 
	end

	def icon_meteo      
  	json = ForecastIO.forecast(self.latitude, self.longitude)
  	json.currently.icon 
	end

end
