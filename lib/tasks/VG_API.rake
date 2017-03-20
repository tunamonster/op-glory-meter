
namespace :VG_API do
  desc "Interacts with the VG API"
  task :parse_matches => :environment do
	def get_matches
		url = URI("https://api.dc01.gamelockerapp.com/shards/na/matches")

		http = Net::HTTP.new(url.host, url.port)
		http.use_ssl = true
		http.verify_mode = OpenSSL::SSL::VERIFY_NONE

		request = Net::HTTP::Get.new(url)
		request["authorization"] = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJqdGkiOiIxZjFhMWYyMC1lZDdkLTAxMzQtNDg3NC0wMjQyYWMxMTAwMDUiLCJpc3MiOiJnYW1lbG9ja2VyIiwib3JnIjoiZGF2bWFzc291ZC1nbWFpbC1jb20iLCJhcHAiOiIxZjE2OTZiMC1lZDdkLTAxMzQtNDg3My0wMjQyYWMxMTAwMDUiLCJwdWIiOiJzZW1jIiwidGl0bGUiOiJ2YWluZ2xvcnkiLCJzY29wZSI6ImNvbW11bml0eSIsImxpbWl0IjoxMH0.6frB88LvqbwrblPaknBDm2FYyv-zkSxUqmAdA5Cw8w4'
		request["x-title-id"] = 'semc-vainglory'
		request["accept"] = 'application/vnd.api+json'
		request["cache-control"] = 'no-cache'
		request["postman-token"] = '00807a38-d433-4189-d93f-a5190282cd48'
		response = http.request(request)
		(response.kind_of? Net::HTTPSuccess) ? JSON.parse(response.body) : nil
	end

	def parse_matches 
		matches = get_matches
		return if matches.nil?
		
		binding.pry
	end

	parse_matches


  end
end