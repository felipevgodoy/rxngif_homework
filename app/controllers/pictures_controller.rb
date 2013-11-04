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
  end
  def destroy
  	p = Picture.find(params[:id])
  	p.delete

  end
  def edit
  	@pic = Picture.find(params[:id])
  end

    def update
  	p = Picture.find(params[:id])
  	p.source = params[:source]
  	p.caption = params[:caption]
  	p.save
  end
end
