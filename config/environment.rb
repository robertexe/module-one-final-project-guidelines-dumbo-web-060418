
require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'


sql = <<-SQL

CREATE TABLE IF NOT EXISTS matches (
	id INTEGER PRIMARY KEY,
	team_one TEXT,
 	team_two TEXT,
	match_date TEXT,
	match_score INTEGER,
	stadium_held TEXT

)
SQL

ActiveRecord::Base.connection.execute(sql)
