require 'pg'

class DBInit
  def self.call
    script = ""
    File.open('script.sql') do |file|
      script = file.readlines.join
    end

    @conn = PG.connect( dbname: "todo_dev" )
    @conn.exec(script)
  rescue PG::ConnectionBad
    puts "Something went wrong."
  end

  def self.conn
    @conn
  end
end
