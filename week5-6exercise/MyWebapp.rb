# week 6 :: Exercise :: Mark Hutchison
require 'rubygems'
require 'sinatra'

# Remember arrays?  We'll store the TODO list in an array

items = ['Finish the Ruby course']

get '/' do
  # To iterate through an array, use the #each method (look back at LtP Chapter 7)
  # Note that "puts" in Sinatra will only output to the console, not the web
  # browser.  Instead, build up a string called "response" and return it to
  # Sinatra so that will be the response

  response = ""
  items.each do |item|
    # TODO: Build up the response string by concatenating "item" and a line
    # break "<br/>" to the string
	
	response += item + "<br/>"
  end

  # Keep the line here so that response is returned to sinatra
  
  response
end

get '/add/:item' do
  # The new item will be available as params[:item]
  # TODO: Insert code to add params[:item] to the global items array here
  
  items.push params[:item]
  redirect to('/')
end

get '/remove/:item' do
  # The item to be removed will be available as params[:item]
  # TODO: Insert code to remove params[:item] from the global items array
  # here.  You may want to use a method called Array#delete (look it up in the
  # documentation!)
  
  items.delete params[:item]
  redirect to('/')
end