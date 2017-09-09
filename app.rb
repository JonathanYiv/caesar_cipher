require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/caesar_cipher.rb'

get '/' do
	text = params['text']
	shift = params['shift'].to_i
	cipher = caesar_cipher(text, shift) if !text.nil? && !shift.nil?

	erb :index, :locals => {:cipher => cipher}
end