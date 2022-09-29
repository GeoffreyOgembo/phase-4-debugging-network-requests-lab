class ToysController < ApplicationController
  wrap_parameters format: []

  def index
    toys = Toy.all
    render json: toys
  end

  def create
    toy = Toys.create(toy_params)
    toy = Toy.create!(toy_params)
    render json: toy, status: :created
  end

  # def update
  #   toy = Toy.find_by(id: params[:id])
  #   toy.update(toy_params)
  #   toy.update(likes: params[:likes])
  # end

  # def destroy


  private

  def toy_params
    params.permit(:name, :image, :likes)
    params.permit(:name, :image, :likes, :id)
  end

end