class ApiEndpointsController < ApplicationController
	def sample_get
		data = {"a": "yang hurn", "b": "yung jong", "c": "schoolboy qp"}
			respond_to do |format|
				format.html
				format.json { render json: data }
			end		
	end

	def sample_post
		response = "you sent "+params
		respond_to do |format|
			format.html
			format.json { render json: response }
		end
	end
end
