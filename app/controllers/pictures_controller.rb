class PicturesController < ApplicationController
  
  def show
  	@pic = Picture.find(params[:id])
  end
  
  def index
  	@pic = Picture.all
  end

  def new

  end
  def create
  	p = Picture.new
  	p.source = params[:source]
  	p.caption = params[:caption]
  	p.save
    redirect_to pictures_url
  end

  def destroy
  	p = Picture.find(params[:id])
  	p.delete
    redirect_to pictures_url
  end

  
  def edit
  	@pic = Picture.find(params[:id])
  end

  def update
  	@pic = Picture.find(params[:id])
    p = Picture.find(params[:id])
  	p.source = params[:source]
  	p.caption = params[:caption]
  	p.save
    redirect_to picture_url(@pic.id)
  end

end
