class TodoItem
  attr_reader :text

  def initialize(params)
    @text = params[:text]
  end

  def save
    DBInit.conn.exec(
      "INSERT INTO todo_items (text) VALUES ('#{text}')"
    )
  end
end
