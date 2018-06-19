require 'pp'
require 'rest-client'
require 'json'

url = 'https://raw.githubusercontent.com/lsv/fifa-worldcup-2018/master/data.json'
response = RestClient.get(url)
fifa_api = JSON.parse(response)

teams = fifa_api['teams']

# groups = fifa_api['groups']
modified_teams = teams.each do |team|
	team.delete_if do |key, value|
		key
	end
end

# modified_teams = teams.each do |team|
# 	team.delete_if do |key, value|
# 		key != "id" or key != "name"
# 	end
# end
#
# pp modified_teams
