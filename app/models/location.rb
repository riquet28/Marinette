class Location < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

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

end
