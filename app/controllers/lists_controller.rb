class ListsController < ApplicationController

  def index
    @lists = List.all
    name = params[:name]
    @lists = Quote.search(name)
    json_response(@lists)
  end

  def show
    @list = List.find(params[:id])
    json_response(@list)
  end

  def create
    @list = List.create!(list_params)
    json_response(@list, :created)
  end

  def update
    @list = List.find(params[:id])
    @list.update!(list_params)
    render status: 200, json: {
      message: "Your business has successfully been updated."
    }
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
     render status: 200, json: {
      message: "Your business has successfully been destroyed."}
  end
end
  private

def list_params
    params.permit(:name, :address, :description)
  end
end
