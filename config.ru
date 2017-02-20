ENV['DEMO_ENV'] ||= 'development'
require 'bundler'
Bundler.require(:default, ENV['DEMO_ENV'])
require_relative 'environment'
require_relative 'database'
require './app/controllers/application_controller.rb'
Dir.glob('./app/{controllers,models}/*.rb').each { |file| require file }

use UsersController
run ApplicationController