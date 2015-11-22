class WebservicesController < ApplicationController

	@@crime_by_zipcode = {}
	def query
		if @@crime_by_zipcode.length == 0
			obtain_crime_by_zipcode
		end

		response.headers['Access-Control-Allow-Origin'] = '*'

		zipcode = params[:zipcode]
		respond_to do |format|
			format.json { render :json => @@crime_by_zipcode[zipcode] }
			format.html { render :json => @@crime_by_zipcode[zipcode] }
		end
	end

	def obtain_crime_by_zipcode
		file = File.read('app/assets/data.json')
		@@crime_by_zipcode = JSON.parse(file)
	end
end
