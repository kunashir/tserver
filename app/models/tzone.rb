class TZone
	def self.time_in_city(cities=nil)
		output = "UTC: " + Time.now.utc.strftime('%d.%m.%Y %H:%M:%S') + "<br>"
		if cities
	  	cities.split(",").each do |city|
	  		zone = Rails.cache.fetch(city, expires_in: 100.days) do
	  			res = Geokit::Geocoders::GoogleGeocoder.geocode(city)
		  		# p Time.now
		  		if !res.success
		  			output += "Error: city not found"	
		  			next
		  		end
		  		zone = GoogleTimezone.fetch(res.ll.split(","))
	  		end
	  		# p Time.now
  			output += "#{city}:  " + Time.now.in_time_zone(zone.time_zone_id).strftime('%d.%m.%Y %H:%M:%S') + "<br>"
	  	end

	  end
	  return output
	end
end