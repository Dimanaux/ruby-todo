class TodoItem
  attr_reader :text
  attr_reader :id
  attr_reader :id, :text

  def initialize(params)
    @id = params[:id]
    @text = params[:text]
  end

  def save
    DBInit.conn.exec(
      "INSERT INTO todo_item (text) VALUES ('#{text}')"
    )
  end

  def destroy
    DBInit.conn.exec(
      "DELETE FROM todo_item WHERE id = '#{id}'"
    )
  end
end
