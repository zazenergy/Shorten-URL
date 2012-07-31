class UrlsController < ApplicationController
  def new
  	@shortened_url = Url.new
  end

  def create
  	@shortened_url = Url.new
  	@shortened_url.url = params[:url][:url]
  	if @shortened_url.save
  		flash[:shortened_id] = @shortened_url.id
  		redirect_to new_url_url
  	else
  		render :action => "new"
  	end
  end

  def show
  	@shortened_url = Url.find(params[:id])
  	p @shortened_url
  	redirect_to @shortened_url.url 
  end
end


