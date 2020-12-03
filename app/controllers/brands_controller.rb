class BrandsController < ApplicationController
  before_action :require_login
  
  def index
    @brands = Brand.all.order(sort_column + ' ' + sort_direction)
  end

  def new
    @brand = Brand.new
    @category = Category.all
  end
  
  def create
      @category = Category.all
      @brand = Brand.create(brand_params)
      if @brand.save
        redirect_to brand_instruments_path(@brand)
      else
        render :new
      end
  end

  def edit
    find_brand
  end

  def update
    find_brand
    @brand.update(params.require(:brand).permit(:name, :category))
    redirect_to brand_instruments_path(@brand)
  end
  
  def show
    if find_brand
      @instruments = @brand.instruments.order(sort_column + ' ' + sort_direction)
    else
      set_new
      render new_brand_path
    end
  end

  def string
    @brands = Brand.string
    render :index
  end

  def keyboard
    @brands = Brand.keyboard
    render :index
  end

  def percussion
    @brands = Brand.percussion
    render :index
  end

  private
  def brand_params
      params.require(:brand).permit(:name, :category_id)
  end

  def find_brand
    @brand = Brand.find_by(id: params[:id])
  end
end