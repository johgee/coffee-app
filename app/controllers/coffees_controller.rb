class CoffeesController < ApplicationController
  def index
    coffees = Coffee.all
    render json: coffees.as_json
  end

  def create
  coffee = Coffee.new(
    name: params[:name],
    price: params[:price],
    milk: params[:milk]
    )
    coffee.save
    render json: coffee.as_json
  end 

  def show
    coffee = Coffee.find_by(id: params[:id])
    render json: coffee.as_json
  end 

  def update
    coffee = Coffee.find_by(id: params[:id])
    coffee.name = params[:name] || coffee.name
    coffee.price = params[:price] || coffee.price
    coffee.milk = params[:milk] || coffee.milk 
    coffee.save
    render json: coffee.as_json 
  end 

  def destroy 
    coffee = Coffee.find_by(id: params[:id])
    coffee.destroy
    render json: {message: "successfully destroyed!"}
  end
end 