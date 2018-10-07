#!/usr/bin/env ruby

require 'rubygems'
require 'bundler'

require './models/todo_item.rb'
require './models/todo_items.rb'
require './initializers/pg_connect.rb'

Bundler.require(:default)

DBInit.call

command = ARGV[0]
text = ARGV[1..-1].join(" ")

# =============================================
if command == "add"
  todo_item = TodoItem.new(text: text).save
  TodoItems.new.add(todo_item)
elsif command == "list"
  TodoItems.new.list
elsif command == "complete"
  TodoItem.new(id: text).destroy
end
# =============================================
# todo add Drink coffee
# todo list
# todo complete 5

