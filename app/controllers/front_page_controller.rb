class FrontPageController < ApplicationController
  def index
  	@packages = Package.all
  end
end
