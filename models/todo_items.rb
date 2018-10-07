class TodoItems
  attr_reader :items

  def initialize
    @items ||= []

    todo_items = DBInit.conn.exec(
       "SELECT * FROM todo_item;"
     )
     todo_items.to_a.each do |item|
       @items << (TodoItem.new(text: item["text"]))
     end
  end

  def list
    items.each do |item|
      puts item.text
    end
  end

  def add(todo_item)
    items << todo_item
  end
end
