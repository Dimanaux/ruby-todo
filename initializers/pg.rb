class DBInit
  def self.call
    @conn = PG.connect( dbname: "todo_dev" )
    @conn.exec("CREATE TABLE todo_items IF NOT EXISTS;")
  rescue PG::ConnectionBad
    puts "Sorry, database not exist!"
  end

  def self.conn
    @conn
  end
end
