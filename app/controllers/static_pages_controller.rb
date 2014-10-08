class StaticPagesController < ApplicationController
	
  def index
  	@images = Dir.glob("app/assets/images/photographs/*.jpg").sort_by {rand}
  end
end
