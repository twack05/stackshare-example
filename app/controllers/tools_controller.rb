require 'open-uri'

class ToolsController < ApplicationController
	def index
	end
	def tools
		tools = open("https://api.stackshare.io/v1/tools/explore?access_token=#{ENV['stackshare_access_token']}")
		render json: tools
	end

end
