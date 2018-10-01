class DBInit
  def self.call
    @conn = PG.connect( dbname: "todo_dev" )
  rescue PG::ConnectionBad
    puts "Sorry, database not exist!"
  end

  def self.conn
    @conn
  end
end
