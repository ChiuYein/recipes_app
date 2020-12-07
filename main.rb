require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'pg'
require 'bcrypt'

require_relative 'helpers/user_helper'
require_relative 'helpers/db_helper'

require_relative 'models/user'


require_relative 'controllers/recipes_controller'
require_relative 'controllers/sessions_controller'
require_relative 'controllers/users_controller'

enable :sessions







