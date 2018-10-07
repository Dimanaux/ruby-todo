class DBInit
  def self.call
    @conn = PG.connect( dbname: "todo_dev" )
    @conn.exec("CREATE TABLE todo_item IF NOT EXISTS;")
#  rescue PG::ConnectionBad
    puts "Sorry, database does not exist!"
  end

  def self.conn
    @conn
  end
end
